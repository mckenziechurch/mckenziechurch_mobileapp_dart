import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NonEmergencyHelp extends StatelessWidget {
  void sendTextMessage(String phoneNumber, String message) async {
    final url = 'sms:$phoneNumber?body=$message';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void confirmationAlert(BuildContext context, String message) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            // ignore: prefer_const_constructors
            title: Row(
              children: const [
                Icon(
                  Icons.health_and_safety,
                  size: 50,
                  semanticLabel: 'Emergency help',
                ),
                Text(
                  'Request Sent!',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                )
              ],
            ),
            content: Text(message),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('OK'))
            ],
          );
        });
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
                    sendTextMessage('[facilityPhoneNumber]',
                        '[userName] needs help eating.');

                    confirmationAlert(context,
                        'Feeding request received. If you have not already, please order a meal.');
                  },
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Icon(
                          Icons.food_bank_rounded,
                          size: 50,
                          semanticLabel: 'Need help eating',
                        ),
                        Text('Need help eating')
                      ])),
            ),
            const SizedBox(height: 16),
            SizedBox(
                width: 500,
                child: ElevatedButton(
                    onPressed: () {
                      //send medicine help message to facility number
                      sendTextMessage('[facilityPhoneNumber]',
                          '[userName] needs help with medicine.');
                      confirmationAlert(context, 'Medicine request received.');
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
                        ]))),
            const SizedBox(height: 16),
            SizedBox(
                width: 500,
                child: ElevatedButton(
                    onPressed: () {
                      //send bathroom help message to facility number
                      sendTextMessage('[facilityPhoneNumber]',
                          '[userName] needs help going to the restroom.');
                      confirmationAlert(context, 'Restroom request received.');
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
                        ]))),
            const SizedBox(height: 16),
            SizedBox(
                width: 500,
                child: OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: const Text('Back', semanticsLabel: 'Back')))
          ],
        ),
      ),
    ));
  }
}
