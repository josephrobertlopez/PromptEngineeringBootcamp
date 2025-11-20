#!/bin/bash

# PowerPoint Generation Script for Prompt Engineering Bootcamp
# Run this script after extracting the workshop files

echo "🎯 Generating PowerPoint presentations with Accenture branding..."

# Check if Marp is installed
if ! command -v marp &> /dev/null; then
    echo "📦 Installing Marp CLI..."
    npm install -g @marp-team/marp-cli
fi

echo "🎨 Generating SESSION-1-FINAL.pptx..."
marp SESSION-1-FINAL.md --pptx --theme accenture-theme.css -o SESSION-1-FINAL.pptx

echo "🎨 Generating SESSION-2-FINAL.pptx..."
marp SESSION-2-FINAL.md --pptx --theme accenture-theme.css -o SESSION-2-FINAL.pptx

echo "📄 Generating PDF versions..."
marp SESSION-1-FINAL.md --pdf --theme accenture-theme.css -o SESSION-1-FINAL.pdf
marp SESSION-2-FINAL.md --pdf --theme accenture-theme.css -o SESSION-2-FINAL.pdf

echo "✅ PowerPoint and PDF files generated successfully!"
echo ""
echo "📂 Generated files:"
echo "   - SESSION-1-FINAL.pptx (PowerPoint with Accenture branding)"
echo "   - SESSION-2-FINAL.pptx (PowerPoint with Accenture branding)"
echo "   - SESSION-1-FINAL.pdf (PDF handout version)"
echo "   - SESSION-2-FINAL.pdf (PDF handout version)"
echo ""
echo "🎯 Note: SVG diagrams become high-quality static images in PowerPoint"
echo "🎯 All diagrams display reliably in PowerPoint presentations"

# Test that files were created
if [ -f "SESSION-1-FINAL.pptx" ] && [ -f "SESSION-2-FINAL.pptx" ]; then
    echo "🎉 SUCCESS: PowerPoint files ready for professional delivery!"
else
    echo "❌ Error: PowerPoint generation failed. Check Marp installation."
    echo "💡 Try: npm install -g @marp-team/marp-cli"
fi
