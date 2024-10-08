import 'package:flutter/material.dart';
import 'package:shorebird/shorebird_utility.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ShoreBirdUtility shoreBirdUtility;
  String description =
      "The app dynamically updates its color based on the applied patch, giving a visual cue of the update. The displayed patch number helps users track the current version. This step-by-step flow ensures that users are well-informed and experience a smooth transition through each stage of the update process ";
  bool shoreBirdAvablity = false;
  int? shoreBirdPatchVersion;

  @override
  void initState() {
    super.initState();
    // Initialize ShoreBirdUtility with the BuildContext
    shoreBirdUtility = ShoreBirdUtility(context);

    // Check and set the current Shorebird patch number
    shoreBirdUtility.checkShorebirdCurentPatchNumber().then((value) {
      if (mounted) {
        setState(() {
          shoreBirdPatchVersion = value;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Image.asset('assets/shorebird.png'),
        ),
        title: const Text(
          "Implementation of ShoreBird",
        ),
        backgroundColor: Colors.amberAccent,
      ),
      body: Container(
        color: Colors.green[100],
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 50, 20, 70),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                color: Color.fromRGBO(240, 143, 98,
                    1), //const Color.fromARGB(255, 125, 180, 221),
                padding: const EdgeInsets.all(20),
                child: Center(
                  child: Text(
                    '$description \n\n\n Current Shorebird Patch Number : \n ${shoreBirdPatchVersion ?? 'No Patch Installed'} ',
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const Spacer(),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  side: const BorderSide(width: 2, color: Colors.orange),
                ),
                onPressed: () =>
                    shoreBirdUtility.showShoreBirdUpdateAvaiblityBanner(),
                child: const Text(
                  "Check ShoreBird Update",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
