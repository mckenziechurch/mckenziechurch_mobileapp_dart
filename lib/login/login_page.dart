import 'package:flutter/material.dart';
import '../login/login_confirm.dart';
import '../landing_screen/landing_screen.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/login_confirm':(context) => ConfirmLogin(),
        '/landing_screen':(context) => LandingPage()
      },
      home: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Login',
              semanticsLabel: 'Login',
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            const Text(
              'First Name',
              semanticsLabel: 'First Name',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 8),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Type first name here',
                semanticCounterText: 'Type first name here',
                border: OutlineInputBorder(
                  borderRadius: 
                  BorderRadius.all(Radius.circular(10.0) 
                  )
                ),
              ),
              textAlign: TextAlign.center
            ),
            const SizedBox(height:10),
            const Text(
              'Last Name',
              semanticsLabel: 'Last Name',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 8),
            const TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Type last name here',
                semanticCounterText: 'Type last name here',
                border: OutlineInputBorder(
                  borderRadius: 
                  BorderRadius.all(Radius.circular(10.0) 
                  )
                ),
              )
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // go to login confirmation page
                 Navigator.pushReplacementNamed(context, '/login_confirm');
              },
              child: const Text('I am finished',
              semanticsLabel: 'I am finished'
              ),
            ),
            const SizedBox(height: 16),
            OutlinedButton(
              onPressed: () {
                 // go back to landing page
                  Navigator.pushReplacementNamed(context, '/landing_screen');
              }, 
              child: const Text('Back',
              semanticsLabel: 'Back')
              )
          ],
        ),
      ),
      )
    );
  }
}
