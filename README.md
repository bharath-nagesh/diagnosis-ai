# DiagnosisAI

AI-powered medical diagnostic assistant for doctors

## Overview

DiagnosisAI is a Capacitor-based iOS application designed to assist healthcare professionals with medical diagnostics using artificial intelligence. This app provides doctors with intelligent tools to enhance their diagnostic capabilities and improve patient care.

## Prerequisites

Before you begin, ensure you have the following installed:

- Node.js (v14 or higher)
- npm (v6 or higher)
- Xcode (latest version)
- CocoaPods
- iOS Simulator or physical iOS device for testing

## Project Structure

```
diagnosis-ai/
├── www/                    # Web assets directory
│   └── index.html         # Entry point for the web app
├── ios/                   # iOS native project
│   └── App/              # Xcode project files
├── node_modules/         # Node dependencies
├── capacitor.config.json # Capacitor configuration
├── package.json          # npm package configuration
└── README.md            # This file
```

## Installation

1. Clone the repository (if using version control):
   ```bash
   git clone <repository-url>
   cd diagnosis-ai
   ```

2. Install dependencies:
   ```bash
   npm install
   ```

3. Sync Capacitor with iOS:
   ```bash
   npx cap sync ios
   ```

## Development

### Running on iOS

1. Open the project in Xcode:
   ```bash
   npx cap open ios
   ```

2. Select your target device (simulator or physical device)

3. Click the Run button in Xcode or press `Cmd + R`

### Building Web Assets

When you make changes to your web assets in the `www/` directory, sync them to the native project:

```bash
npx cap copy ios
```

### Live Reload (Optional)

For a better development experience, you can set up live reload to see changes instantly on your device.

## Capacitor Commands

- **Add iOS platform**: `npx cap add ios`
- **Sync all platforms**: `npx cap sync`
- **Copy web assets**: `npx cap copy ios`
- **Update native plugins**: `npx cap update ios`
- **Open in Xcode**: `npx cap open ios`

## Configuration

The app is configured with:

- **App Name**: DiagnosisAI
- **App ID**: com.bharath.diagnosisai
- **Web Directory**: www

Configuration can be modified in `capacitor.config.json`

## Dependencies

### Core Dependencies

- `@capacitor/core`: ^8.0.0
- `@capacitor/cli`: ^8.0.0
- `@capacitor/ios`: ^8.0.0

## Project Information

- **Name**: diagnosis-ai
- **Version**: 1.0.0
- **Description**: AI-powered medical diagnostic assistant for doctors

## Next Steps

1. Implement your web application in the `www/` directory
2. Add Capacitor plugins as needed for native features
3. Configure app icons and splash screens
4. Set up proper code signing for iOS distribution
5. Test thoroughly on various iOS devices

## Resources

- [Capacitor Documentation](https://capacitorjs.com/docs)
- [Capacitor iOS Documentation](https://capacitorjs.com/docs/ios)
- [Capacitor Plugins](https://capacitorjs.com/docs/plugins)

## License

ISC

## Contributing

Please ensure all code follows best practices for medical software development and complies with relevant healthcare regulations (HIPAA, etc.).

## Security & Compliance

This application is intended for use by healthcare professionals. Ensure that:

- All patient data is properly encrypted
- HIPAA compliance is maintained
- Proper authentication and authorization are implemented
- Data transmission is secure (HTTPS/TLS)
- Regular security audits are performed

## Support

For issues, questions, or contributions, please contact the development team.
