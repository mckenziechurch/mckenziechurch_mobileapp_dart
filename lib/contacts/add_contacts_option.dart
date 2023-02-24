import 'package:flutter/material.dart';

class AddContacts extends StatelessWidget {
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
              'Would you like to add contacts for message sending?',
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                //go to create contacts page
                //TODO: ADD NAVIGATION
              },
              child: const Text('Yes'),
            ),
            const SizedBox(height: 16),
            OutlinedButton(
              onPressed: () {
                // go to main page
                 //TODO: ADD NAVIGATION
              }, 
              child: const Text('No'))
          ],
        ),
      ),
      )
    );
  }
}
