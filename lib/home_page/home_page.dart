import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomePage extends StatelessWidget {
  //TODO: access user object fields
  Future<void> pickImageFromGallery() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    // Do something with the picked file (e.g. display it in an image widget)
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    Navigator.pushNamed(context, '/emergency_help');
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Icon(
                          Icons.health_and_safety,
                          size: 50,
                          semanticLabel: 'Emergency help',
                        ),
                        Text('Emergergency help')
                      ])),
            ),
            const SizedBox(height: 16),
            SizedBox(
                width: 500,
                child: ElevatedButton(
                    onPressed: () {
                      //go to non-emergency_help_page
                      Navigator.pushNamed(context, '/non-emergency_help');
                    },
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Icon(
                            Icons.help,
                            size: 50,
                            semanticLabel: 'Non-emergency help',
                          ),
                          Text('Non-emergergency help')
                        ]))),
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
                        ]))),
            const SizedBox(height: 16),
            SizedBox(
                width: 500,
                child: ElevatedButton(
                    onPressed: () {
                      //go to send_message
                      Navigator.pushNamed(context, '/send_message');
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
                        ]))),
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
                        ]))),
            const SizedBox(height: 16),
            SizedBox(
                width: 500,
                child: ElevatedButton(
                    onPressed: () {
                      //go to phone_settings
                      Navigator.pushNamed(context, '/settings');
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
                        ]))),
            const SizedBox(height: 16),
            SizedBox(
                width: 500,
                child: OutlinedButton(
                    onPressed: () {
                      //TODO: ADD NAVIGATION - popup ("would you like to exit the app?")
                      Navigator.pushNamed(context, '/landing_screen');
                    },
                    child: const Text('Quit', semanticsLabel: 'Quit')))
          ],
        ),
      ),
    );
  }
}
