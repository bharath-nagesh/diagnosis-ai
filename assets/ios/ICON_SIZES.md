# iOS App Icon Size Requirements

This document lists all required icon sizes for DiagnosisAI iOS app.

## 📱 Required Icon Sizes

### App Store Icon
- **1024x1024** - App Store Marketing Icon (Required)
  - Filename: `icon-1024.png`
  - Format: PNG (no transparency)
  - Purpose: App Store listing

### iPhone Icons

#### Notifications (iOS 7-15)
- **40x40** (20pt @2x) - `icon-20@2x.png`
- **60x60** (20pt @3x) - `icon-20@3x.png`

#### Settings
- **58x58** (29pt @2x) - `icon-29@2x.png`
- **87x87** (29pt @3x) - `icon-29@3x.png`

#### Spotlight Search
- **80x80** (40pt @2x) - `icon-40@2x.png`
- **120x120** (40pt @3x) - `icon-40@3x.png`

#### App Icon
- **120x120** (60pt @2x) - iPhone/SE - `icon-60@2x.png`
- **180x180** (60pt @3x) - iPhone Plus/Pro/Max - `icon-60@3x.png`

### iPad Icons

#### Notifications
- **20x20** (20pt @1x) - `icon-20.png`
- **40x40** (20pt @2x) - `icon-20@2x.png`

#### Settings
- **29x29** (29pt @1x) - `icon-29.png`
- **58x58** (29pt @2x) - `icon-29@2x.png`

#### Spotlight Search
- **40x40** (40pt @1x) - `icon-40.png`
- **80x80** (40pt @2x) - `icon-40@2x.png`

#### App Icon
- **76x76** (76pt @1x) - `icon-76.png`
- **152x152** (76pt @2x) - `icon-76@2x.png`

#### iPad Pro App Icon
- **167x167** (83.5pt @2x) - `icon-83.5@2x.png`

## 📊 Complete Size List (Unique Sizes)

| Size | Filename | Purpose |
|------|----------|---------|
| 20x20 | icon-20.png | iPad Notifications @1x |
| 29x29 | icon-29.png | iPad Settings @1x |
| 40x40 | icon-20@2x.png, icon-40.png | iPhone Notifications @2x, iPad Spotlight @1x |
| 58x58 | icon-29@2x.png | iPhone/iPad Settings @2x |
| 60x60 | icon-20@3x.png | iPhone Notifications @3x |
| 76x76 | icon-76.png | iPad App @1x |
| 80x80 | icon-40@2x.png | iPhone/iPad Spotlight @2x |
| 87x87 | icon-29@3x.png | iPhone Settings @3x |
| 120x120 | icon-40@3x.png, icon-60@2x.png | iPhone Spotlight @3x, iPhone App @2x |
| 152x152 | icon-76@2x.png | iPad App @2x |
| 167x167 | icon-83.5@2x.png | iPad Pro App @2x |
| 180x180 | icon-60@3x.png | iPhone App @3x |
| 1024x1024 | icon-1024.png | App Store Marketing |

## 🎨 Design Guidelines

### Technical Requirements
- **Format**: PNG (Portable Network Graphics)
- **Color Space**: sRGB or Display P3
- **Transparency**: No alpha channel (fully opaque)
- **Compression**: Lossless
- **Bit Depth**: 24-bit (8 bits per channel)

### Design Requirements
- **No rounded corners**: iOS automatically applies corner radius
- **No glossy effects**: iOS can add shine (though deprecated)
- **Fill entire square**: No transparent borders or margins
- **Consistent design**: Same design across all sizes
- **High quality**: Sharp at all sizes, no pixelation

### Color & Brand Guidelines
- **Primary Gradient**: #667eea to #764ba2
- **Theme**: Medical/Healthcare/Diagnostic
- **Style**: Modern, professional, trustworthy
- **Icon Elements**: Consider medical cross, diagnostic symbol, or AI indicator

## 🚀 Quick Reference for Developers

### Minimum Required Set (13 unique sizes):
```
20x20, 29x29, 40x40, 58x58, 60x60, 76x76, 80x80, 87x87,
120x120, 152x152, 167x167, 180x180, 1024x1024
```

### Most Important Sizes (Users will see these most):
- **180x180** - iPhone app icon (most common)
- **120x120** - iPhone app icon (older models)
- **1024x1024** - App Store (first impression)

## 📝 Notes

1. Start with the **1024x1024** master icon
2. Scale down to create all other sizes
3. Check each size for clarity and readability
4. Test on actual devices if possible
5. Use tools like Xcode's Asset Catalog or third-party icon generators

## 🔗 Useful Tools

- **Xcode**: Built-in icon management
- **AppIconBuilder**: Online generator
- **IconKit**: macOS app for icon generation
- **ImageMagick**: Command-line batch processing
- **Figma/Sketch**: Design tools with export presets

## ⚠️ Common Mistakes to Avoid

❌ Adding rounded corners (iOS does this automatically)
❌ Using transparency or alpha channels
❌ Inconsistent designs across sizes
❌ Text too small to read on small sizes
❌ Forgetting the 1024x1024 App Store icon
❌ Wrong file format (JPEG instead of PNG)
❌ Incorrect color space
