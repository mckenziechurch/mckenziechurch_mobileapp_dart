import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../home_page.dart';

class MessageConfirmation extends StatelessWidget {
  //TODO: access contact object phone num
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
      routes: {
        '/home_page':(context) => HomePage()
      },
      home: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(
                    Icons.check_circle,
                    size: 30,
                    semanticLabel: 'Message sent to [contactName]',
                  ),
                  Text('Message sent to [contactName]',
                  style: TextStyle(fontSize: 30)
                  )
                ]
              ),            
            const SizedBox(height: 16),
            SizedBox(
              width: 500,
              child: ElevatedButton(
              onPressed: () {
                //go to home page
                Navigator.pushReplacementNamed(context, '/home_page');
              }, child: 
              const Text('Send text message',
              semanticsLabel: 'Send text message'),
            ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 500,
            child: OutlinedButton(
              onPressed: () {
                 //go to back to send_message
                 Navigator.pop(context);
              }, 
              child: const Text('Edit text message', 
              semanticsLabel: 'Edit text message'
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
