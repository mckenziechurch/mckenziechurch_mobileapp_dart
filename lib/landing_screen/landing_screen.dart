import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            backgroundImage:
                                NetworkImage('images/pbear-icon.webp'))))
              ],
            ),
            const SizedBox(height: 16),
            SizedBox(
                width: 700,
                child: ElevatedButton(
                  onPressed: () {
                    // go to login_page
                    Navigator.pushNamed(context, '/login_page');
                  },
                  child: const Text('I already have an account',
                      semanticsLabel: 'I already have an account'),
                )),
            const SizedBox(height: 16),
            SizedBox(
                width: 700,
                child: ElevatedButton(
                  onPressed: () {
                    // go to profile_creation
                    Navigator.pushNamed(context, '/profile_creation');
                  },
                  child: const Text('Create an account',
                      semanticsLabel: 'Create an account'),
                )),
            const SizedBox(height: 16),
            SizedBox(
                width: 500,
                child: OutlinedButton(
                    onPressed: () {
                      SystemNavigator.pop();
                    },
                    child: const Text('Quit', semanticsLabel: 'Quit')))
          ],
        ),
      ),
    );
  }
}
