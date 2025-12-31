#!/bin/bash

# DiagnosisAI Icon Generator Script
# This script generates all required iOS app icon sizes from a master 1024x1024 icon

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Configuration
MASTER_ICON="icon-master-1024.png"
OUTPUT_DIR="AppIcon.appiconset"

echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${BLUE}   DiagnosisAI - iOS Icon Generator${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""

# Check if ImageMagick is installed
if ! command -v convert &> /dev/null; then
    echo -e "${RED}❌ Error: ImageMagick is not installed${NC}"
    echo -e "${YELLOW}Please install ImageMagick:${NC}"
    echo -e "  macOS:   ${GREEN}brew install imagemagick${NC}"
    echo -e "  Ubuntu:  ${GREEN}sudo apt-get install imagemagick${NC}"
    echo -e "  Windows: ${GREEN}Download from https://imagemagick.org${NC}"
    exit 1
fi

# Check if sips is available (macOS only, alternative method)
HAS_SIPS=false
if command -v sips &> /dev/null; then
    HAS_SIPS=true
fi

# Check if master icon exists
if [ ! -f "$MASTER_ICON" ]; then
    echo -e "${RED}❌ Error: Master icon not found: $MASTER_ICON${NC}"
    echo ""
    echo -e "${YELLOW}Please create a 1024x1024 PNG icon named:${NC} $MASTER_ICON"
    echo -e "${YELLOW}Place it in the current directory and run this script again.${NC}"
    echo ""
    echo -e "${BLUE}Design Guidelines:${NC}"
    echo -e "  • Size: 1024x1024 pixels"
    echo -e "  • Format: PNG (no transparency)"
    echo -e "  • Colors: Use gradient #667eea to #764ba2"
    echo -e "  • No rounded corners (iOS adds these automatically)"
    echo -e "  • Fill entire square with design"
    exit 1
fi

# Validate master icon size
ICON_SIZE=$(identify -format "%wx%h" "$MASTER_ICON" 2>/dev/null || echo "0x0")
if [ "$ICON_SIZE" != "1024x1024" ]; then
    echo -e "${RED}❌ Error: Master icon must be 1024x1024 pixels${NC}"
    echo -e "${YELLOW}Current size: $ICON_SIZE${NC}"
    exit 1
fi

# Create output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

echo -e "${GREEN}✓ Master icon found: $MASTER_ICON ($ICON_SIZE)${NC}"
echo -e "${GREEN}✓ Output directory: $OUTPUT_DIR${NC}"
echo ""
echo -e "${BLUE}Generating iOS app icons...${NC}"
echo ""

# Function to generate icon
generate_icon() {
    local size=$1
    local filename=$2

    echo -n "  Generating ${size}x${size} → $filename ... "

    if [ "$HAS_SIPS" = true ]; then
        # Use sips (faster on macOS)
        sips -z "$size" "$size" "$MASTER_ICON" --out "$OUTPUT_DIR/$filename" > /dev/null 2>&1
    else
        # Use ImageMagick
        convert "$MASTER_ICON" -resize "${size}x${size}" "$OUTPUT_DIR/$filename"
    fi

    echo -e "${GREEN}✓${NC}"
}

# Generate all required icon sizes
# Format: generate_icon <size> <filename>

echo -e "${YELLOW}iPhone Icons:${NC}"
generate_icon 40 "icon-20@2x.png"
generate_icon 60 "icon-20@3x.png"
generate_icon 58 "icon-29@2x.png"
generate_icon 87 "icon-29@3x.png"
generate_icon 80 "icon-40@2x.png"
generate_icon 120 "icon-40@3x.png"
generate_icon 120 "icon-60@2x.png"
generate_icon 180 "icon-60@3x.png"

echo ""
echo -e "${YELLOW}iPad Icons:${NC}"
generate_icon 20 "icon-20.png"
generate_icon 40 "icon-20@2x-ipad.png"
generate_icon 29 "icon-29.png"
generate_icon 58 "icon-29@2x-ipad.png"
generate_icon 40 "icon-40.png"
generate_icon 80 "icon-40@2x-ipad.png"
generate_icon 76 "icon-76.png"
generate_icon 152 "icon-76@2x.png"
generate_icon 167 "icon-83.5@2x.png"

echo ""
echo -e "${YELLOW}App Store Icon:${NC}"
cp "$MASTER_ICON" "$OUTPUT_DIR/icon-1024.png"
echo -e "  Copying 1024x1024 → icon-1024.png ... ${GREEN}✓${NC}"

echo ""
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${GREEN}✓ Success! Generated all iOS app icons${NC}"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo -e "${BLUE}Generated icons in:${NC} $OUTPUT_DIR/"
echo ""
echo -e "${YELLOW}Next Steps:${NC}"
echo -e "  1. Review generated icons for quality"
echo -e "  2. Copy AppIcon.appiconset to: ios/App/App/Assets.xcassets/"
echo -e "  3. Or drag and drop into Xcode's Asset Catalog"
echo -e "  4. Build and test on simulator/device"
echo ""
echo -e "${BLUE}To copy to Xcode project:${NC}"
echo -e "  ${GREEN}cp -r $OUTPUT_DIR ../../ios/App/App/Assets.xcassets/${NC}"
echo ""

# Generate summary
TOTAL_ICONS=$(ls -1 "$OUTPUT_DIR"/*.png 2>/dev/null | wc -l)
echo -e "${BLUE}Summary:${NC} Generated $TOTAL_ICONS icons"
echo ""
