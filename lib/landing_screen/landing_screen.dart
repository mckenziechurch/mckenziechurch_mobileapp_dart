import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  //TODO: create contact object w/ fields firstName, lastName, profilePic?
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
              'Personoo',
              style: TextStyle(fontSize: 50),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 7),
        child: CircleAvatar(
          radius: 25,
          child: CircleAvatar(
            radius: 23,
            backgroundImage: NetworkImage('images/pbear-icon.webp')
          )
        )
        )
      ],
      ),
             const SizedBox(height: 16),
             SizedBox(
              width: 700,
            child: ElevatedButton(
              onPressed: () {
                // Handle button press - takes to login_page
                //TODO: ADD NAVIGATION
              },
              child: const Text('I already have an account',
              semanticsLabel: 'I already have an account'
              ),
            )
              ),
              const SizedBox(height: 16),
             SizedBox(
              width: 700,
            child: ElevatedButton(
              onPressed: () {
                // Handle button press - takes to profile_creation
                //TODO: ADD NAVIGATION
              },
              child: const Text('Create an account',
              semanticsLabel: 'Create an account'
              ),
            )
              ),
              const SizedBox(height: 16),
            SizedBox(
              width: 500,
            child: OutlinedButton(
              onPressed: () {
                 //TODO: ADD NAVIGATION - exits the app
              }, 
              child: const Text('Quit',
              semanticsLabel: 'Quit'
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
