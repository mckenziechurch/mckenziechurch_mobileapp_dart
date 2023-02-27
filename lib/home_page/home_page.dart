import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mckenziechurch_project1/home_page/near_me-map/near_me.dart';
import '../home_page/emergency_help/emergency_help.dart';
import '../home_page/non_emergency/non-emergency_help.dart';
import '../home_page/order_meal/order_meal.dart';
import '../home_page/send_message/send_message.dart';
import '../home_page/calendar/calendar.dart';
import '../home_page/take_photo/take_photo.dart';
import '../home_page/settings/settings.dart';
import '../landing_screen/landing_screen.dart';

class HomePage extends StatelessWidget {
  //TODO: access user object fields
Future<void> pickImageFromGallery() async {
  final picker = ImagePicker();
  final pickedFile = await picker.pickImage(source: ImageSource.gallery);
  // Do something with the picked file (e.g. display it in an image widget)
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/emergency_help':(context) => EmergencyHelp(),
        '/non-emergency_help':(context) => NonEmergencyHelp(),
        '/order_meal':(context) => OrderMeal(),
        '/send_message':(context) => ContactsDropDown(),
        '/calendar':(context) => Calendar(),
        '/take_photo':(context) => TakePhoto(),
        '/near_me':(context) => NearMeMap(),
        '/settings':(context) => SettingsPage(),
        '/landing_screen':(context) => LandingPage()
      },
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
              width: 500,
              child: ElevatedButton(
              onPressed: () {
                //go to emergency_help
                Navigator.pushReplacementNamed(context, '/emergency_help');
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
                    size: 50,
                    semanticLabel: 'Emergency help',
                  ),
                  Text('Emergergency help')
                ]
              )
            ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 500,
              child: ElevatedButton(
              onPressed: () {
                //go to non-emergency_help_page
                Navigator.pushReplacementNamed(context, '/non-emergency_help');
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
                    size: 50,
                    semanticLabel: 'Non-emergency help',
                  ),
                  Text('Non-emergergency help')
                ]
              )
            )
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 500,
              child: ElevatedButton(
              onPressed: () {
                //go to order_meal
                Navigator.pushReplacementNamed(context, '/order_meal');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(
                    Icons.food_bank,
                    size: 50,
                    semanticLabel: 'Request a meal',
                  ),
                  Text('Request a meal')
                ]
              )
            )
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 500,
              child: ElevatedButton(
              onPressed: () {
                //go to send_message
                Navigator.pushReplacementNamed(context, '/send_message');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(
                    Icons.markunread,
                    size: 50,
                    semanticLabel: 'Send a message',
                  ),
                  Text('Send a message')
                ]
              )
            )
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 500,
              child: ElevatedButton(
              onPressed: () {
                //go to calendar
                Navigator.pushReplacementNamed(context, '/calendar');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(
                    Icons.calendar_month_rounded,
                    size: 50,
                    semanticLabel: 'Calendar',
                  ),
                  Text('Calendar')
                ]
              )
            )
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 500,
              child: ElevatedButton(
              onPressed: () {
                //go to take_photo
                Navigator.pushReplacementNamed(context, '/take_photo');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(
                    Icons.camera_alt,
                    size: 50,
                    semanticLabel: 'Take a photo',
                  ),
                  Text('Take a photo')
                ]
              )
            )
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 500,
              child: ElevatedButton(
              onPressed: () {
                //go to gallery
                pickImageFromGallery();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(
                    Icons.insert_photo,
                    size: 50,
                    semanticLabel: 'View photo gallery',
                  ),
                  Text('View photo gallery')
                ]
              )
            )
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 500,
              child: ElevatedButton(
              onPressed: () {
                //go to map
                Navigator.pushReplacementNamed(context, '/near_me');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(
                    Icons.map_rounded,
                    size: 50,
                    semanticLabel: 'Map - things near me',
                  ),
                  Text('Map - things near me')
                ]
              )
            )
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 500,
              child: ElevatedButton(
              onPressed: () {
                //go to phone_settings
                 Navigator.pushReplacementNamed(context, '/settings');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(
                    Icons.settings_applications,
                    size: 50,
                    semanticLabel: 'Phone settings',
                  ),
                  Text('Phone settings')
                ]
              )
            )
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 500,
            child: OutlinedButton(
              onPressed: () {
                 //TODO: ADD NAVIGATION - popup ("would you like to exit the app?")
                  Navigator.pushReplacementNamed(context, '/landing_screen');
              }, 
              child: const Text('Quit',
              semanticsLabel: 'Quit'
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
