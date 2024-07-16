import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String firstContainerText = "First Container";
  String secondContainerText = "Second Container";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.grey.withOpacity(0.6),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 200, horizontal: 20),
        child: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.yellow,
              child: Center(child: Text(firstContainerText)),
            ),
            const Spacer(),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.red.withOpacity(0.8),
              child: Center(child: Text(secondContainerText)),
            ),
          ],
        ),
      ),
    );
  }
}
