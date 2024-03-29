import 'package:flutter/material.dart';

class ConfirmLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Is this you?',
              semanticsLabel: 'Is this you?',
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            const Text(
              'Name: [Full Name]',
              semanticsLabel: 'Name: [Full Name]',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Padding(padding: const EdgeInsets.fromLTRB(20, 20, 20, 7)),
                CircleAvatar(
                    radius: 25,
                    child: CircleAvatar(
                        radius: 23,
                        //TODO: replace w/ user photo
                        backgroundImage:
                            NetworkImage('images/profile_pic_default.jpg'))),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // go to home page
                Navigator.pushNamed(context, '/home');
              },
              child: const Text('Yes', semanticsLabel: 'Yes'),
            ),
            const SizedBox(height: 16),
            OutlinedButton(
                onPressed: () {
                  //go back
                  Navigator.pop(context);
                },
                child: const Text('No', semanticsLabel: 'No'))
          ],
        ),
      ),
    );
  }
}
