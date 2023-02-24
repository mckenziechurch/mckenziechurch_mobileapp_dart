import 'package:flutter/material.dart';

class EmergencyHelp extends StatelessWidget {
  //TODO: access user object fields
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 500,
              child: ElevatedButton(
              onPressed: () {
                //TODO: ADD NAVIGATION - call 911
              },
              style: 
                ElevatedButton.styleFrom(
                  backgroundColor: Colors.red
                ),
              child: 
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(
                    Icons.emergency_rounded,
                    size: 50,
                    semanticLabel: 'Call 911',
                  ),
                  Text('Call 911')
                ]
              )
            ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 500,
              child: ElevatedButton(
              onPressed: () {
                //TODO: ADD NAVIGATION - calls the emergency contact's phone num
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(
                    Icons.call,
                    size: 50,
                    semanticLabel: 'Call [emergency contact]',
                  ),
                  Text('Call [emergency contact]')
                ]
              )
            )
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 500,
            child: OutlinedButton(
              onPressed: () {
                 //TODO: ADD NAVIGATION - home_page
              }, 
              child: const Text('Back')
              )
            )
          ],
        ),
      ),
      )
    );
  }
}
