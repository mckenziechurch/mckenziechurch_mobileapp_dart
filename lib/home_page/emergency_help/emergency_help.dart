import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EmergencyHelp extends StatelessWidget {
void makePhoneCall(String phoneNumber) async {
  final url = 'tel:$phoneNumber';
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
                //CALL 911
                makePhoneCall('+911');
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
                //CALLS the emergency contact's phone num
                //TODO: access emergency contact phone num.
                makePhoneCall('[emergencyContactPhoneNum]');
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
                 //go to home_page
                 Navigator.pop(context);
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
