import 'package:flutter/material.dart';

class NonEmergencyHelp extends StatelessWidget {
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
                //TODO: ADD NAVIGATION - send feed message
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
                //TODO: ADD NAVIGATION - send medicine help message
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
                //TODO: ADD NAVIGATION - send bathroom help message
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
                 //TODO: ADD NAVIGATION - home_page
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
