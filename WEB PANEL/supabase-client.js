// Supabase JavaScript Client
(function (global, factory) {
  typeof exports === 'object' && typeof module !== 'undefined' ? factory(exports) :
  typeof define === 'function' && define.amd ? define(['exports'], factory) :
  (global = typeof globalThis !== 'undefined' ? globalThis : global || self, factory(global.supabase = {}));
}(this, (function (exports) { 'use strict';

  // Supabase Client Implementation
  class SupabaseClient {
    constructor(url, key, options = {}) {
      this.url = url;
      this.key = key;
      this.options = options;
      this.headers = {
        'apikey': key,
        'Authorization': `Bearer ${key}`,
        'Content-Type': 'application/json',
        ...options.headers
      };
    }

    // Database operations
    from(table) {
      return new SupabaseQueryBuilder(this, table);
    }

    // Storage operations
    storage() {
      return new SupabaseStorage(this);
    }

    // Auth operations
    auth() {
      return new SupabaseAuth(this);
    }

    // Real-time subscriptions
    channel(topic) {
      return new SupabaseChannel(this, topic);
    }

    // Helper method for HTTP requests
    async _request(method, endpoint, data = null) {
      const url = `${this.url}${endpoint}`;
      const options = {
        method,
        headers: this.headers
      };

      if (data) {
        options.body = JSON.stringify(data);
      }

      try {
        const response = await fetch(url, options);
        const result = await response.json();
        
        if (!response.ok) {
          throw new Error(result.message || 'Request failed');
        }
        
        return result;
      } catch (error) {
        console.error('Supabase request error:', error);
        throw error;
      }
    }
  }

  // Query Builder for database operations
  class SupabaseQueryBuilder {
    constructor(client, table) {
      this.client = client;
      this.table = table;
      this.query = {};
    }

    select(columns = '*') {
      this.query.select = columns;
      return this;
    }

    insert(data) {
      this.query.insert = data;
      return this;
    }

    update(data) {
      this.query.update = data;
      return this;
    }

    delete() {
      this.query.delete = true;
      return this;
    }

    eq(column, value) {
      this.query.where = this.query.where || [];
      this.query.where.push(`${column}=eq.${value}`);
      return this;
    }

    order(column, options = {}) {
      this.query.order = `${column}.${options.ascending ? 'asc' : 'desc'}`;
      return this;
    }

    limit(count) {
      this.query.limit = count;
      return this;
    }

    async execute() {
      let endpoint = `/rest/v1/${this.table}`;
      let method = 'GET';
      let data = null;

      // Build query parameters
      const params = new URLSearchParams();
      
      if (this.query.select) {
        params.append('select', this.query.select);
      }
      
      if (this.query.where) {
        this.query.where.forEach(condition => {
          const [column, operator] = condition.split('=');
          params.append(column, operator);
        });
      }
      
      if (this.query.order) {
        params.append('order', this.query.order);
      }
      
      if (this.query.limit) {
        params.append('limit', this.query.limit);
      }

      if (this.query.insert) {
        method = 'POST';
        data = this.query.insert;
      } else if (this.query.update) {
        method = 'PATCH';
        data = this.query.update;
      } else if (this.query.delete) {
        method = 'DELETE';
      }

      if (params.toString()) {
        endpoint += `?${params.toString()}`;
      }

      return await this.client._request(method, endpoint, data);
    }

    // Real-time subscription
    on(event, callback) {
      const channel = this.client.channel(`table:${this.table}`);
      return channel.on(event, callback);
    }
  }

  // Storage operations
  class SupabaseStorage {
    constructor(client) {
      this.client = client;
    }

    from(bucket) {
      return new SupabaseStorageBucket(this.client, bucket);
    }
  }

  class SupabaseStorageBucket {
    constructor(client, bucket) {
      this.client = client;
      this.bucket = bucket;
    }

    async upload(path, file, options = {}) {
      const formData = new FormData();
      formData.append('file', file);
      
      const headers = {
        'apikey': this.client.key,
        'Authorization': `Bearer ${this.client.key}`
      };

      const response = await fetch(
        `${this.client.url}/storage/v1/object/${this.bucket}/${path}`,
        {
          method: 'POST',
          headers,
          body: formData
        }
      );

      return await response.json();
    }

    async download(path) {
      const response = await fetch(
        `${this.client.url}/storage/v1/object/${this.bucket}/${path}`,
        {
          headers: {
            'apikey': this.client.key,
            'Authorization': `Bearer ${this.client.key}`
          }
        }
      );

      return response.blob();
    }

    getPublicUrl(path) {
      return {
        data: {
          publicUrl: `${this.client.url}/storage/v1/object/public/${this.bucket}/${path}`
        }
      };
    }
  }

  // Auth operations
  class SupabaseAuth {
    constructor(client) {
      this.client = client;
    }

    async signUp(credentials) {
      return await this.client._request('POST', '/auth/v1/signup', credentials);
    }

    async signIn(credentials) {
      return await this.client._request('POST', '/auth/v1/token?grant_type=password', credentials);
    }

    async signOut() {
      return await this.client._request('POST', '/auth/v1/logout');
    }

    getUser() {
      return { data: { user: null } }; // Simplified for RAT purposes
    }
  }

  // Real-time channel
  class SupabaseChannel {
    constructor(client, topic) {
      this.client = client;
      this.topic = topic;
      this.listeners = new Map();
      this.ws = null;
      this.connected = false;
    }

    on(event, callback) {
      if (!this.listeners.has(event)) {
        this.listeners.set(event, []);
      }
      this.listeners.get(event).push(callback);
      
      if (!this.connected) {
        this._connect();
      }
      
      return this;
    }

    _connect() {
      try {
        const wsUrl = this.client.url.replace('https://', 'wss://').replace('http://', 'ws://');
        this.ws = new WebSocket(`${wsUrl}/realtime/v1/websocket?apikey=${this.client.key}&vsn=1.0.0`);
        
        this.ws.onopen = () => {
          this.connected = true;
          this._join();
        };

        this.ws.onmessage = (event) => {
          try {
            const message = JSON.parse(event.data);
            this._handleMessage(message);
          } catch (error) {
            console.error('Error parsing WebSocket message:', error);
          }
        };

        this.ws.onclose = () => {
          this.connected = false;
          // Attempt to reconnect after 5 seconds
          setTimeout(() => this._connect(), 5000);
        };

        this.ws.onerror = (error) => {
          console.error('WebSocket error:', error);
        };
      } catch (error) {
        console.error('Failed to connect to WebSocket:', error);
        // Fallback to polling for real-time updates
        this._startPolling();
      }
    }

    _join() {
      if (this.ws && this.ws.readyState === WebSocket.OPEN) {
        this.ws.send(JSON.stringify({
          topic: this.topic,
          event: 'phx_join',
          payload: {},
          ref: Date.now()
        }));
      }
    }

    _handleMessage(message) {
      if (message.event === 'postgres_changes') {
        const eventType = message.payload.eventType;
        const listeners = this.listeners.get(eventType) || this.listeners.get('*') || [];
        
        listeners.forEach(callback => {
          try {
            callback(message.payload);
          } catch (error) {
            console.error('Error in event callback:', error);
          }
        });
      }
    }

    _startPolling() {
      // Fallback polling mechanism for real-time updates
      setInterval(async () => {
        try {
          // This is a simplified polling mechanism
          // In a real implementation, you'd track the last update timestamp
          const listeners = this.listeners.get('*') || [];
          listeners.forEach(callback => {
            // Trigger callback with mock data structure
            callback({ eventType: 'UPDATE', new: {}, old: {} });
          });
        } catch (error) {
          console.error('Polling error:', error);
        }
      }, 2000);
    }

    unsubscribe() {
      if (this.ws) {
        this.ws.close();
      }
      this.listeners.clear();
      return { status: 'ok' };
    }
  }

  // Create Supabase client
  function createClient(url, key, options = {}) {
    return new SupabaseClient(url, key, options);
  }

  // Export the createClient function
  exports.createClient = createClient;
  
  // For browser global usage
  if (typeof window !== 'undefined') {
    window.supabase = { createClient };
  }

})));
