import 'package:flutter/material.dart';

class ConfirmLogin extends StatelessWidget {
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
            const Text(
              'Good [daytime], [name]!',
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 300,
              child: ElevatedButton(
              onPressed: () {
                //TODO: ADD NAVIGATION - call 911/emergency contact (option)
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
                    Icons.health_and_safety,
                    size: 30,
                    semanticLabel: 'Emergency help',
                  ),
                  Text('Emergergency help')
                ]
              )
            ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 300,
              child: ElevatedButton(
              onPressed: () {
                //TODO: ADD NAVIGATION - non-emergency_help_page
              },
              style: 
                ElevatedButton.styleFrom(
                  backgroundColor: Colors.green
                ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(
                    Icons.help,
                    size: 30,
                    semanticLabel: 'Non-emergency help',
                  ),
                  Text('Non-emergergency help')
                ]
              )
            )
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 300,
              child: ElevatedButton(
              onPressed: () {
                //TODO: ADD NAVIGATION - order_meal
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(
                    Icons.food_bank,
                    size: 30,
                    semanticLabel: 'Request a meal',
                  ),
                  Text('Request a meal')
                ]
              )
            )
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 300,
              child: ElevatedButton(
              onPressed: () {
                //TODO: ADD NAVIGATION - send_message
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(
                    Icons.markunread,
                    size: 30,
                    semanticLabel: 'Send a message',
                  ),
                  Text('Send a message')
                ]
              )
            )
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 300,
              child: ElevatedButton(
              onPressed: () {
                //TODO: ADD NAVIGATION - calendar
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(
                    Icons.calendar_month_rounded,
                    size: 30,
                    semanticLabel: 'Calendar',
                  ),
                  Text('Calendar')
                ]
              )
            )
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 300,
              child: ElevatedButton(
              onPressed: () {
                //TODO: ADD NAVIGATION - take_photo
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(
                    Icons.camera_alt,
                    size: 30,
                    semanticLabel: 'Take a photo',
                  ),
                  Text('Take a photo')
                ]
              )
            )
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 300,
              child: ElevatedButton(
              onPressed: () {
                //TODO: ADD NAVIGATION - gallery
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(
                    Icons.insert_photo,
                    size: 30,
                    semanticLabel: 'View photo gallery',
                  ),
                  Text('View photo gallery')
                ]
              )
            )
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 300,
              child: ElevatedButton(
              onPressed: () {
                //TODO: ADD NAVIGATION - map
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(
                    Icons.map_rounded,
                    size: 30,
                    semanticLabel: 'Map - things near me',
                  ),
                  Text('Map - things near me')
                ]
              )
            )
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 300,
              child: ElevatedButton(
              onPressed: () {
                //TODO: ADD NAVIGATION - phone_settings
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(
                    Icons.settings_applications,
                    size: 30,
                    semanticLabel: 'Phone settings',
                  ),
                  Text('Phone settings')
                ]
              )
            )
            ),
            const SizedBox(height: 16),
            OutlinedButton(
              onPressed: () {
                 //TODO: ADD NAVIGATION - popup ("would you like to exit the app?")
              }, 
              child: const Text('Quit')
              )
          ],
        ),
      ),
      )
    );
  }
}
