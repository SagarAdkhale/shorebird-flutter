import 'package:flutter/material.dart';
import 'package:restart_app/restart_app.dart';
import 'package:shorebird_code_push/shorebird_code_push.dart';

final ShorebirdCodePush _shorebirdCodePush = ShorebirdCodePush();

class ShoreBirdUtility {
  // Store the BuildContext within the class to avoid passing it repeatedly.
  final BuildContext context;

  ShoreBirdUtility(this.context);

  // Check if Shorebird is available
  bool checkShorebirdAvaiblity() {
    return _shorebirdCodePush.isShorebirdAvailable();
  }

  // Get the current Shorebird patch number
  Future<int?> checkShorebirdCurentPatchNumber() async {
    return await _shorebirdCodePush.currentPatchNumber();
  }

  // Check if a new Shorebird patch is available for download
  Future<bool> checkIsShorebirdNewPatchAvailableForDownload() async {
    return await _shorebirdCodePush.isNewPatchAvailableForDownload();
  }

  // Show a banner indicating that a Shorebird update is available
  void showShoreBirdUpdateAvaiblityBanner() {
    ScaffoldMessenger.of(context).showMaterialBanner(MaterialBanner(
      backgroundColor: Colors.white,
      content: const Text("ShoreBird Update Available"),
      actions: [
        TextButton(
          onPressed: () {
            ScaffoldMessenger.of(context).clearMaterialBanners();
          },
          child: const Text("Cancel"),
        ),
        TextButton(
          onPressed: () async {
            ScaffoldMessenger.of(context).hideCurrentMaterialBanner();

            await _downloadUpdate();

            ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
          },
          child: const Text("Download"),
        ),
      ],
    ));
  }

  // Download the update and show relevant banners
  Future<void> _downloadUpdate() async {
    _showDownloadingBanner();

    await Future.wait([
      _shorebirdCodePush.downloadUpdateIfAvailable(),
      // Add an artificial delay so the banner has enough time to animate in.
      Future<void>.delayed(const Duration(seconds: 5)),
    ]);

    ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
    _showRestartBanner();
  }

  // Show a banner indicating that the update is downloading
  void _showDownloadingBanner() {
    ScaffoldMessenger.of(context).showMaterialBanner(
      const MaterialBanner(
        padding: EdgeInsets.only(left: 20, right: 20),
        content: Text('Downloading...'),
        actions: [
          SizedBox(
            height: 14,
            width: 14,
            child: CircularProgressIndicator(
              strokeWidth: 2,
            ),
          ),
        ],
      ),
    );
  }

  // Show a banner indicating that the app needs to restart to apply the update
  void _showRestartBanner() {
    ScaffoldMessenger.of(context).showMaterialBanner(
      const MaterialBanner(
        content: Text('A new patch is ready!'),
        actions: [
          TextButton(
            // Restart the app for the new patch to take effect.
            onPressed: Restart.restartApp,
            child: Text('Restart app'),
          ),
        ],
      ),
    );
  }
}
