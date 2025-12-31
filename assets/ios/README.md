# DiagnosisAI iOS App Icons

This directory contains the iOS app icon assets and generation tools for the DiagnosisAI application.

## 📁 Directory Structure

```
assets/ios/
├── README.md                      # This file
├── ICON_SIZES.md                  # Complete icon size reference
├── generate-icons.sh              # Automated icon generation script
├── AppIcon.appiconset/            # Xcode asset catalog
│   ├── Contents.json             # Asset catalog configuration
│   └── *.png                     # Generated icon files
└── icon-master-1024.png          # Your master icon (create this)
```

## 🚀 Quick Start

### Step 1: Create Master Icon

Create a **1024x1024 pixel PNG** icon and name it `icon-master-1024.png`.

**Design Requirements:**
- ✅ Size: 1024x1024 pixels
- ✅ Format: PNG without transparency
- ✅ Colors: Use gradient #667eea to #764ba2
- ✅ Theme: Medical/diagnostic/healthcare
- ❌ No rounded corners (iOS adds these)
- ❌ No transparency/alpha channel

**Design Tools:**
- Figma: https://figma.com
- Adobe Illustrator
- Sketch
- Affinity Designer
- Canva Pro

### Step 2: Generate All Icon Sizes

Run the automated generation script:

```bash
cd assets/ios
./generate-icons.sh
```

This will create all 18 required iOS icon sizes automatically.

### Step 3: Copy to Xcode Project

```bash
# From assets/ios directory
cp -r AppIcon.appiconset ../../ios/App/App/Assets.xcassets/
```

Or drag and drop the `AppIcon.appiconset` folder directly into Xcode's Asset Catalog.

### Step 4: Sync and Build

```bash
# From project root
npx cap sync ios
npx cap open ios
```

## 📋 Required Icon Sizes

See [ICON_SIZES.md](./ICON_SIZES.md) for complete documentation.

### Summary (18 icons total):

| Device | Sizes Required |
|--------|---------------|
| **iPhone** | 40, 60, 58, 87, 80, 120, 180 (7 sizes) |
| **iPad** | 20, 29, 40, 58, 76, 80, 152, 167 (8 sizes) |
| **App Store** | 1024 (1 size) |

## 🛠️ Manual Icon Generation

If you can't use the script, create icons manually:

### Using macOS Preview:
1. Open `icon-master-1024.png` in Preview
2. Tools → Adjust Size
3. Set new dimensions (e.g., 180x180)
4. File → Export → Save as PNG

### Using ImageMagick:
```bash
# Install ImageMagick
brew install imagemagick

# Resize to specific size
convert icon-master-1024.png -resize 180x180 icon-60@3x.png
```

### Using Online Tools:
- **AppIcon.co**: https://appicon.co
- **MakeAppIcon**: https://makeappicon.com
- **AppIconBuilder**: https://appiconbuilder.com

## 📱 Icon Purposes

### Critical Icons (Users see these most):
- **180x180** (`icon-60@3x.png`) - iPhone app icon on home screen
- **120x120** (`icon-60@2x.png`) - Older iPhone models
- **1024x1024** (`icon-1024.png`) - App Store listing

### System Icons:
- **80x80, 120x120** - Spotlight search results
- **58x58, 87x87** - Settings app
- **40x40, 60x60** - Notifications

## 🎨 Design Tips

### Color Palette
```
Primary Gradient:
  Start: #667eea (Purple Blue)
  End:   #764ba2 (Deep Purple)

Accent Colors:
  Light:  #a78bfa
  Dark:   #5b21b6
```

### Design Elements to Consider
- 🩺 Medical cross or caduceus
- 🤖 AI/technology indicator (circuit pattern, neural network)
- 💡 Diagnostic/analysis symbol
- 📊 Health/data visualization
- ❤️ Heart rate or vital signs

### Typography
- Avoid small text (won't be readable at small sizes)
- If using letters, make them bold and simple
- Consider using just "DA" or "Dx" for DiagnosisAI

### Composition
- Center your main element
- Use 80% of the canvas (leave 10% padding on all sides)
- Ensure design works at 40x40 (smallest required size)
- Test on actual device for best results

## ✅ Validation Checklist

Before submitting to App Store:

- [ ] All 18 icon sizes generated
- [ ] No transparency (alpha channel)
- [ ] PNG format only
- [ ] sRGB or Display P3 color space
- [ ] No rounded corners added
- [ ] Design is clear at all sizes (especially 40x40)
- [ ] Consistent design across all sizes
- [ ] App Store icon (1024x1024) looks professional
- [ ] Icons copied to `ios/App/App/Assets.xcassets/`
- [ ] Tested on simulator
- [ ] Tested on actual device

## 🔧 Troubleshooting

### Script fails with "ImageMagick not installed"
```bash
# macOS
brew install imagemagick

# Ubuntu/Debian
sudo apt-get install imagemagick
```

### Icons look blurry
- Ensure master icon is exactly 1024x1024
- Use PNG format, not JPEG
- Don't upscale from smaller images
- Export with high quality settings

### Xcode shows missing icons
- Check that all filenames match Contents.json
- Ensure icons are in AppIcon.appiconset folder
- Verify no transparency in PNG files
- Clean build folder in Xcode (Product → Clean Build Folder)

### Icons not updating after changes
```bash
# Clean and rebuild
npx cap sync ios
# In Xcode: Product → Clean Build Folder → Build
```

## 📚 Additional Resources

### Apple Documentation
- [iOS Human Interface Guidelines - App Icon](https://developer.apple.com/design/human-interface-guidelines/app-icons)
- [Asset Catalog Format Reference](https://developer.apple.com/library/archive/documentation/Xcode/Reference/xcode_ref-Asset_Catalog_Format/)

### Design Inspiration
- [Dribbble - Medical App Icons](https://dribbble.com/search/medical-app-icon)
- [Behance - Healthcare Icons](https://www.behance.net/search/projects/healthcare%20icon)

### Testing Tools
- **Simulator**: Test on various iOS devices
- **Preview on Device**: Use TestFlight for real device testing
- **Icon Preview**: Use Xcode's asset catalog preview

## 🤝 Need Help?

1. Check [ICON_SIZES.md](./ICON_SIZES.md) for detailed specifications
2. Review Apple's Human Interface Guidelines
3. Test on actual iOS device if possible
4. Consider hiring a designer on Fiverr or Upwork for professional icons

## 📝 Notes

- The `Contents.json` file is already configured for all required iOS icons
- The generation script creates all sizes automatically from your master icon
- Always keep your master 1024x1024 icon in version control
- Consider creating multiple design variants and A/B testing

---

**DiagnosisAI** - AI-powered medical diagnostic assistant for doctors
