import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
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
              'Fill in your information',
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            const Text(
              'First Name',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 8),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Type first name here',
                border: OutlineInputBorder(
                  borderRadius: 
                  BorderRadius.all(Radius.circular(10.0) 
                  )
                ),
              ),
              textAlign: TextAlign.center
            ),
            const SizedBox(height:10),
            const Text(
              'Last Name',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 8),
            const TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Type last name here',
                border: OutlineInputBorder(
                  borderRadius: 
                  BorderRadius.all(Radius.circular(10.0) 
                  )
                ),
              )
            ),
            const SizedBox(height: 16),
            Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 7),
          child: Text(
            'Add a photo of yourself',
            style: TextStyle(fontSize: 20.0),
          ),
        ),
        CircleAvatar(
          radius: 25,
          child: CircleAvatar(
            radius: 23,
            backgroundImage: NetworkImage('images/profile_pic_default.jpg')
          )
        ),
      ],
      ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle button press
                //TODO: ADD NAVIGATION
              },
              child: const Text('I am finished'),
            ),
            const SizedBox(height: 16),
            OutlinedButton(
              onPressed: () {
                 //TODO: ADD NAVIGATION
              }, 
              child: const Text('Quit'))
          ],
        ),
      ),
      )
    );
  }
}
