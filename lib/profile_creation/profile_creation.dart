import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Fill in your information',
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 16),
            const TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Enter your first name',
              ),
            ),
            const SizedBox(height: 8),
            const TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Enter your last name',
              ),
            ),
            const SizedBox(height: 8),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle button press
                //TODO: ADD NAVIGATION
              },
              child: const Text('I am finished'),
            ),
            const SizedBox(height: 16),
            OutlinedButton(
              onPressed: () {
                 //TODO: ADD NAVIGATION
              }, 
              child: const Text('Quit'))
          ],
        ),
      ),
      )
    );
  }
}
