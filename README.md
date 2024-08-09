# Shorebird Test App

Welcome to the **Shorebird Test App**! This application demonstrates the process of manually updating Shorebird patches and highlights the transitions between various update banners.

## Overview

The Shorebird Test App showcases a smooth and informative update process using Shorebird. The app features a step-by-step flow to guide users through the update process, including notifications, download progress, and restart prompts.

### Features

- **Update Notifications**: Displays a banner at the top of the screen when an update is available, with options to download or cancel.
- **Download Progress**: Shows a progress banner during the download of the update.
- **Restart Prompt**: Prompts users to restart the app once the update is downloaded to apply the new patch.
- **Smooth Transition**: Provides a clear and guided update experience from notification to completion.

## Installation

1. **Clone the Repository**:

   ```bash
   git clone https://github.com/yourusername/shorebird-test-app.git

# shorebird release android --artifact apk
✓ Fetching apps (0.7s)
✓ Building app bundle with Flutter 3.22.3 (6aacc0c947) (44.0s)
✓ Building APK with Flutter 3.22.3 (6aacc0c947) (10.6s)
✓ Release version: 1.0.0+3 (1.1s)
✓ Fetching releases (0.6s)

🚀 Ready to create a new release!

📱 App: shorebirdTestApp (9c1d2eca-771a-4f98-bd5c-8900e7b1dd68)
📦 Release Version: 1.0.0+3
🕹️  Platform: android
🐦 Flutter Version: 3.22.3 (6aacc0c947)

Would you like to continue? (y/N) Yes
✓ Fetching releases (0.4s)
✓ Creating release (1.0s)
✓ Updating release status (0.4s)
✓ Creating artifacts (15.6s)
✓ Updating release status (2.6s)

✅ Published Release 1.0.0+3!
Your next step is to upload the app bundle to the Play Store:
/Users/sagaradkhale/Desktop/sagar/Flutter App/shorebird/build/app/outputs/bundle/release/app-release.aab

Or distribute the apk:
/Users/sagaradkhale/Desktop/sagar/Flutter App/shorebird/build/app/outputs/flutter-apk/app-release.apk

For information on uploading to the Play Store, see:
https://support.google.com/googleplay/android-developer/answer/9859152?hl=en

To create a patch for this release, run shorebird patch --platforms=android --release-version=1.0.0+3

Note: shorebird patch --platforms=android without the --release-version option will patch the current version of the app.

# shorebird patch --platforms=android
     
✓ Fetching apps (0.5s)
✓ Fetching releases (0.4s)
Which release would you like to patch? 1.0.0+3
✓ Fetching aab artifact (0.4s)
✓ Downloading aab (4.9s)
✓ Building patch with Flutter 3.22.3 (6aacc0c947) (17.4s)
✓ Verifying patch can be applied to release (16ms)
✓ Fetching release artifacts (1.3s)
✓ Downloading release artifacts (7.2s)
✓ Creating patch artifacts (3.8s)

🚀 Ready to publish a new patch!

📱 App: shorebirdTestApp (9c1d2eca-771a-4f98-bd5c-8900e7b1dd68)
📦 Release Version: 1.0.0+3
🕹️  Platform: android [arm32 (99.04 KB), arm64 (91.74 KB), x86_64 (81.90 KB)]
🟢 Track: Production

Would you like to continue? (y/N) Yes
✓ Creating patch (2.0s)
✓ Uploading artifacts (4.6s)
✓ Fetching channels (0.3s)
✓ Promoting patch to stable (0.5s)

✅ Published Patch 1!
sagaradkhale@sagars-MacBook-Pro-2 shorebird % shorebird patch --platforms=android 
✓ Fetching apps (0.5s)
✓ Fetching releases (0.4s)
Which release would you like to patch? 1.0.0+3
✓ Fetching aab artifact (0.4s)
✓ Downloading aab (5.3s)
✓ Building patch with Flutter 3.22.3 (6aacc0c947) (17.5s)
✓ Verifying patch can be applied to release (17ms)
✓ Fetching release artifacts (1.3s)
✓ Downloading release artifacts (7.4s)
✓ Creating patch artifacts (4.3s)

🚀 Ready to publish a new patch!

📱 App: shorebirdTestApp (9c1d2eca-771a-4f98-bd5c-8900e7b1dd68)
📦 Release Version: 1.0.0+3
🕹️  Platform: android [arm32 (101.61 KB), arm64 (94.21 KB), x86_64 (84.45 KB)]
🟢 Track: Production

Would you like to continue? (y/N) Yes
✓ Creating patch (1.9s)
✓ Uploading artifacts (4.5s)
✓ Fetching channels (0.4s)
✓ Promoting patch to stable (0.4s)

✅ Published Patch 2!
sagaradkhale@sagars-MacBook-Pro-2 shorebird % 