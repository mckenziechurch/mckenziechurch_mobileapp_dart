import 'package:flutter/material.dart';
import 'landing_screen/landing_screen.dart';
Future<void> main() async {
   runApp(const Personoo());
}

 class Personoo extends StatelessWidget {
  const Personoo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       body: SizedBox(
        child: LandingPage()
        )
      ),
    );
  }
}