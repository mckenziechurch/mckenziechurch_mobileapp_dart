import 'package:flutter/material.dart';

class EmergencyContact extends StatelessWidget {
  //TODO: create emergencyContact object w/ fields firstName, lastName, profilePic?
  //TODO: emergency contact tracks location?
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
              'Fill in information for your emergency contact',
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            const Text(
              'Name',
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 8),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Type their name here',
                border: OutlineInputBorder(
                  borderRadius: 
                  BorderRadius.all(Radius.circular(10.0) 
                  )
                ),
              ),
              textAlign: TextAlign.center
            ),
            const SizedBox(height: 16),
            const Text(
              'Phone Number',
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 8),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Type their phone number here',
                border: OutlineInputBorder(
                  borderRadius: 
                  BorderRadius.all(Radius.circular(10.0) 
                  )
                ),
              ),
              textAlign: TextAlign.center
            ),
            const SizedBox(height: 16),
            Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 7),
          child: Text(
            'Add a photo of your contact',
            style: TextStyle(fontSize: 30.0),
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
      ListTile(
          title: Row(
            children: <Widget>[
              Expanded(
                child: 
                OutlinedButton(
                  onPressed: () {
                    //TODO: clear the fields
                  },
                  child: 
                    const Text("Remove contact")
                  )
                  ),
            ],
          )
        ),
            const SizedBox(height: 16),
            SizedBox(
              width: 500,
            child: ElevatedButton(
              onPressed: () {
                // Handle button press - takes to add_contacts_option
                //TODO: ADD NAVIGATION
              },
              child: const Text('I am finished'),
            )
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 500,
            child: OutlinedButton(
              onPressed: () {
                 //TODO: ADD NAVIGATION - go to profile_creation
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
