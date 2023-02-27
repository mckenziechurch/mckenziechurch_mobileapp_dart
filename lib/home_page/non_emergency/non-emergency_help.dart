import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NonEmergencyHelp extends StatelessWidget {
  //TODO: access user object fields for name
  //TODO: add confirmation message for each button (ie, medicine message sent)
void sendTextMessage(String phoneNumber, String message) async {
  final url = 'sms:$phoneNumber?body=$message';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

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
                //send feed message to facility number
                sendTextMessage('[facilityPhoneNumber]', '[userName] needs help eating.');
              },
              child: 
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(
                    Icons.food_bank_rounded,
                    size: 50,
                    semanticLabel: 'Need help eating',
                  ),
                  Text('Need help eating')
                ]
              )
            ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 500,
              child: ElevatedButton(
              onPressed: () {
                //send medicine help message to facility number
                sendTextMessage('[facilityPhoneNumber]', '[userName] needs help with medicine.');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(
                    Icons.medication_rounded,
                    size: 50,
                    semanticLabel: 'Need medicine',
                  ),
                  Text('Need medicine')
                ]
              )
            )
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 500,
              child: ElevatedButton(
              onPressed: () {
                //send bathroom help message to facility number
                sendTextMessage('[facilityPhoneNumber]', '[userName] needs help going to the restroom.');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(
                    Icons.family_restroom_rounded,
                    size: 50,
                    semanticLabel: 'Need restroom help',
                  ),
                  Text('Need restroom help')
                ]
              )
            )
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 500,
            child: OutlinedButton(
              onPressed: () {
                 //go to home_page
                 Navigator.pop(context);
              }, 
              child: const Text('Back', 
              semanticsLabel: 'Back'
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
