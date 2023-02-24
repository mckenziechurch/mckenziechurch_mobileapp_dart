import 'package:flutter/material.dart';

class ConfirmLogin extends StatelessWidget {
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
              'Is this you?',
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            const Text(
              'Name: [Full Name]',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 16),
            Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 7)
        ),
        CircleAvatar(
          radius: 25,
          child: CircleAvatar(
            radius: 23,
            //TODO: replace w/ user photo
            backgroundImage: NetworkImage('images/profile_pic_default.jpg')
          )
        ),
      ],
      ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle button press - takes to add_contacts_option
                //TODO: ADD NAVIGATION
              },
              child: const Text('Yes'),
            ),
            const SizedBox(height: 16),
            OutlinedButton(
              onPressed: () {
                 //TODO: ADD NAVIGATION
                 // exits the application
              }, 
              child: const Text('No')
              )
          ],
        ),
      ),
      )
    );
  }
}
