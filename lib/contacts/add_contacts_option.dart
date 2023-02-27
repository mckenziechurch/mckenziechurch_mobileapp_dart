import 'package:flutter/material.dart';
import './create_contacts.dart';
import '../home_page/home_page.dart';

class AddContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/create_contacts': (context) => CreateContacts(),
        '/home_page': (context) => HomePage()
      },
      home: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Would you like to add contacts for message sending?',
              style: TextStyle(fontSize: 50),
              textAlign: TextAlign.center,
              semanticsLabel: 'Would you like to add contacts for message sending?',
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 500,
            child: ElevatedButton(
              onPressed: () {
                //go to create contacts page
                Navigator.pushReplacementNamed(context, '/create_contacts');
              },
              child: const Text('Yes',
              semanticsLabel: 'Yes'
              ),
            )
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 500,
            child: OutlinedButton(
              onPressed: () {
                // go to main page
                Navigator.pushReplacementNamed(context, '/home_page');
              }, 
              child: const Text('No',
              semanticsLabel: 'No'
              )
              )
            )
          ],
        ),
      ),
      )
    );
  }
}
