import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mckenziechurch_project1/take_photo/take_photo.dart';

class HomePage extends StatelessWidget {
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
              'Hey there!',
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
                      //go to map
                      Navigator.pushReplacementNamed(context, '/map');
                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Icon(
                            Icons.map_rounded,
                            size: 50,
                            semanticLabel: 'Map',
                          ),
                          Text('Map')
                        ]))),
            const SizedBox(height: 16),
            SizedBox(
                width: 500,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, TakePhoto() as String);
                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Icon(
                            Icons.camera_alt_rounded,
                            size: 50,
                            semanticLabel: 'Take a Photo',
                          ),
                          Text('Take a Photo')
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
                      Navigator.pushNamed(context, '/landing_screen');
                    },
                    child: const Text('Quit', semanticsLabel: 'Quit')))
          ],
        ),
      ),
    );
  }
}
