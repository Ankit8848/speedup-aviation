#!/bin/bash

# SpeedUp Aviation - Vercel Deployment Quick Start
# This script helps you deploy the project to Vercel

echo "🚀 SpeedUp Aviation - Vercel Deployment Setup"
echo "=============================================="
echo ""

# Check if Vercel CLI is installed
if ! command -v vercel &> /dev/null; then
    echo "📦 Installing Vercel CLI..."
    npm i -g vercel
fi

echo "✅ Project Configuration:"
echo "  - Main App: artifacts/speedup"
echo "  - Output Directory: ./artifacts/speedup/dist/public"
echo "  - Build Command: pnpm run build"
echo "  - Package Manager: pnpm"
echo ""

echo "🔧 To deploy your project:"
echo ""
echo "Option 1 - Using Vercel CLI:"
echo "  vercel deploy"
echo ""
echo "Option 2 - Using Vercel Dashboard:"
echo "  1. Go to https://vercel.com/new"
echo "  2. Import from Git"
echo "  3. Select your repository"
echo "  4. Vercel will auto-detect the configuration"
echo ""

echo "📝 For manual deployment via CLI:"
echo "  1. Login to Vercel: vercel login"
echo "  2. Deploy: vercel deploy --prod"
echo ""

echo "🌐 After deployment:"
echo "  - Your main app will be served at https://<project-name>.vercel.app"
echo "  - Static assets will have long-term caching"
echo "  - SPA routing is configured with rewrites to index.html"
echo ""

echo "✨ Done! Your project is ready for Vercel deployment."
