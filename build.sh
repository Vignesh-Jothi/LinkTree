#!/bin/bash

# Build script for LinkTree
# This script optimizes assets for production

echo "🚀 Building LinkTree for production..."

# Clean dist and docs directories
rm -rf dist/* docs/*
mkdir -p dist/{css,js,images} docs/{css,js,images}

# Copy HTML and other root assets
cp index.html dist/
cp favi.svg dist/ 2>/dev/null || true
cp *.png dist/ 2>/dev/null || true

# Copy same assets to docs folder
cp index.html docs/
cp favi.svg docs/ 2>/dev/null || true
cp *.png docs/ 2>/dev/null || true

# Combine and minify CSS
echo "📦 Processing CSS..."
cat assets/css/base.css assets/css/components.css assets/css/animations.css assets/css/responsive.css > dist/css/style.min.css

# Copy and minify JS (simple copy for now)
echo "📦 Processing JavaScript..."
cp assets/js/main.js dist/js/main.min.js

# Copy images and other assets
cp -r assets/images/* dist/images/ 2>/dev/null || true

# Update HTML to reference minified assets and correct paths
sed 's/assets\/css\/style.css/css\/style.min.css/g; s/assets\/js\/main.js/js\/main.min.js/g' dist/index.html > dist/index.html.tmp && mv dist/index.html.tmp dist/index.html

# Copy everything to docs/ folder for GitHub Pages
cp -r dist/* docs/
touch docs/.nojekyll

echo "✅ Build complete! Files are in the 'dist' and 'docs' folders."
echo "🌐 To preview: cd dist && python3 -m http.server 8080"
echo "📄 GitHub Pages: Configure to serve from 'docs/' folder"