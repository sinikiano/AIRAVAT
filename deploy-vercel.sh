#!/bin/bash

# AIRAVAT Vercel Deployment Script
# Handles proper Vercel deployment with fixed configuration

echo "🚀 AIRAVAT Vercel Deployment"
echo "============================="
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

# Check if we're in the right directory
if [ ! -d "WEB PANEL" ]; then
    print_error "WEB PANEL directory not found. Please run this script from the AIRAVAT root directory."
    exit 1
fi

# Check if vercel.json exists and is properly configured
if [ ! -f "vercel.json" ]; then
    print_error "vercel.json not found. Creating one..."
    cat > vercel.json << 'EOF'
{
  "version": 2,
  "buildCommand": "echo 'No build needed for static files'",
  "outputDirectory": "WEB PANEL",
  "cleanUrls": true,
  "trailingSlash": false,
  "rewrites": [
    {
      "source": "/",
      "destination": "/index.html"
    }
  ],
  "headers": [
    {
      "source": "/(.*)",
      "headers": [
        {
          "key": "X-Content-Type-Options",
          "value": "nosniff"
        },
        {
          "key": "X-Frame-Options",
          "value": "DENY"
        },
        {
          "key": "X-XSS-Protection",
          "value": "1; mode=block"
        },
        {
          "key": "Cache-Control",
          "value": "public, max-age=31536000, immutable"
        }
      ]
    }
  ]
}
EOF
    print_status "Created vercel.json with correct configuration"
fi

# Check for Vercel CLI
if ! command -v vercel &> /dev/null; then
    print_info "Installing Vercel CLI..."
    npm install -g vercel
    if [ $? -ne 0 ]; then
        print_error "Failed to install Vercel CLI. Please install manually: npm install -g vercel"
        exit 1
    fi
    print_status "Vercel CLI installed successfully"
fi

# Check if web panel has Supabase configuration
print_info "Checking web panel configuration..."
if grep -q "SUPABASE_URL" "WEB PANEL/index.html"; then
    print_warning "Web panel still contains placeholder values. Please run the main deploy.sh script first to configure Supabase settings."
    read -p "Do you want to continue anyway? (y/N): " CONTINUE
    if [[ ! $CONTINUE =~ ^[Yy]$ ]]; then
        print_info "Please run './deploy.sh' first to configure your Supabase settings."
        exit 0
    fi
fi

# Pre-deployment checks
print_info "Running pre-deployment checks..."

# Check if all required files exist
REQUIRED_FILES=("WEB PANEL/index.html" "WEB PANEL/script.js" "WEB PANEL/jquery.js")
for file in "${REQUIRED_FILES[@]}"; do
    if [ ! -f "$file" ]; then
        print_error "Required file missing: $file"
        exit 1
    fi
done
print_status "All required files present"

# Create .vercelignore if it doesn't exist
if [ ! -f ".vercelignore" ]; then
    cat > .vercelignore << 'EOF'
node_modules
.git
*.log
.env*
README.md
MIGRATION_GUIDE.md
QUICK_START.md
ANDROID APP/
supabase-schema.sql
deploy.sh
deploy-vercel.sh
*.md
.gitignore
EOF
    print_status "Created .vercelignore file"
fi

# Login to Vercel
print_info "Checking Vercel authentication..."
if ! vercel whoami &> /dev/null; then
    print_info "Please login to Vercel..."
    vercel login
    if [ $? -ne 0 ]; then
        print_error "Failed to login to Vercel"
        exit 1
    fi
fi
print_status "Vercel authentication successful"

# Deploy to Vercel
print_info "Starting deployment to Vercel..."
echo ""

# Set project settings and deploy
vercel --prod --confirm

DEPLOY_STATUS=$?

echo ""
if [ $DEPLOY_STATUS -eq 0 ]; then
    print_status "Deployment successful! 🎉"
    echo ""
    print_info "Your AIRAVAT control panel is now live!"
    print_info "You can manage your deployments at: https://vercel.com/dashboard"
    echo ""
    print_warning "Important next steps:"
    echo "1. Test your web panel functionality"
    echo "2. Configure your Android APK with the same Supabase settings"
    echo "3. Set up your Supabase database using the provided SQL schema"
    echo ""
else
    print_error "Deployment failed with exit code: $DEPLOY_STATUS"
    echo ""
    print_info "Common solutions:"
    echo "• Check your vercel.json configuration"
    echo "• Ensure all files are present in WEB PANEL directory"
    echo "• Check Vercel CLI version: vercel --version"
    echo "• Try manual deployment: vercel --prod"
    echo ""
    exit 1
fi

# Optional: Open the deployed URL
read -p "Would you like to open your deployed site in the browser? (y/N): " OPEN_BROWSER
if [[ $OPEN_BROWSER =~ ^[Yy]$ ]]; then
    DEPLOYED_URL=$(vercel ls | grep "airavat" | head -1 | awk '{print $2}')
    if [ ! -z "$DEPLOYED_URL" ]; then
        print_info "Opening https://$DEPLOYED_URL"
        if command -v xdg-open &> /dev/null; then
            xdg-open "https://$DEPLOYED_URL"
        elif command -v open &> /dev/null; then
            open "https://$DEPLOYED_URL"
        else
            print_info "Please manually open: https://$DEPLOYED_URL"
        fi
    fi
fi

print_status "Deployment process completed!"
