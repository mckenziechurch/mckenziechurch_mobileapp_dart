import 'package:flutter/material.dart';
import '../contacts/add_contacts_option.dart';

class ProfilePage extends StatelessWidget {
  //TODO: create user object w/ fields firstName, lastName, profilePic?
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/add_contacts_option':(context) => AddContacts()
      },
      home: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Fill in your information',
              semanticsLabel: 'Fill in your information',
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            const Text(
              'First Name',
              semanticsLabel: 'First Name',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 8),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Type first name here',
                semanticCounterText: 'Type first name here',
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
              semanticsLabel: 'Last Name',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 8),
            const TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Type last name here',
                semanticCounterText: 'Type last name here',
                border: OutlineInputBorder(
                  borderRadius: 
                  BorderRadius.all(Radius.circular(10.0) 
                  )
                ),
              )
            ),
            const SizedBox(height:10),
            const Text(
              'Phone Number',
              semanticsLabel: 'Phone Number',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 8),
            const TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Type phone number here',
                semanticCounterText: 'Type phone number here',
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
            semanticsLabel: 'Add a photo of yourself',
            style: TextStyle(fontSize: 20.0),
          ),
        ),
        CircleAvatar(
          radius: 25,
          child: CircleAvatar(
            radius: 23,
            //TODO: replace w/ user photo
            backgroundImage: NetworkImage('images/profile_pic_default.jpg')
          )
        ),
      ],
      ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                //go to add_contacts_option
                 Navigator.pushReplacementNamed(context, '/add_contacts_option');
              },
              child: const Text('I am finished',
              semanticsLabel: 'I am finished'
              ),
            ),
            const SizedBox(height: 16),
            OutlinedButton(
              onPressed: () {
                 // exits the application
                 Navigator.pop(context);
              }, 
              child: const Text('Quit',
              semanticsLabel: 'Quit'
              )
              )
          ],
        ),
      ),
      )
    );
  }
}
