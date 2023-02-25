import 'package:flutter/material.dart';

class SendMessage extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
                //TODO: ADD NAVIGATION - confirm page
              }, child: 
              const Text('Home screen',
              semanticsLabel: 'Home screen'),
            ),
            )
          ],
        ),
      ),
      )
    );
  }
}
