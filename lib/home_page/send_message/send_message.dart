import 'package:flutter/material.dart';

class ContactsDropDown extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SendMessage();

}

class SendMessage extends State<ContactsDropDown> {
  var initialdropdown = '[contactName]';
  List<String> contactsList = ['[contactOne]', '[contactTwo]', '[contactThree]'];

  List<DropdownMenuItem> dropDown() {
    List<DropdownMenuItem<String>> dropDownItems = [];

    for (int i = 0; i < contactsList.length; i++) {
      String contact = contactsList[i];
      var newContact = DropdownMenuItem(
        value: contact,
        child: Text(contact)
      );
      dropDownItems.add(newContact);
    }
    return dropDownItems;
  }

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
              'Send a message',
              semanticsLabel: 'Send a message',
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            const Text(
              'Select a contact',
              semanticsLabel: 'Select a contact',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            //TODO: add dropdown button for contacts - attempted, but could not figure out
            SizedBox(
              width: 500,
              child: ElevatedButton(
              onPressed: () {
                //TODO: ADD NAVIGATION - send text to contact
              }, child: 
              const Text('[contactName]',
              semanticsLabel: '[contactName]'),
            ),
            ),
            const SizedBox(height: 16),
            const TextField(
              maxLines: 5,
              decoration: InputDecoration(
                hintText: 'Type message',
                semanticCounterText: 'Type message',
                border: OutlineInputBorder(
                  borderRadius: 
                  BorderRadius.all(Radius.circular(10.0) 
                  )
                ),
              ),
              textAlign: TextAlign.center
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 500,
              child: ElevatedButton(
              onPressed: () {
                //TODO: ADD NAVIGATION - confirm page
              }, child: 
              const Text('Send message',
              semanticsLabel: 'Send message'),
            ),
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

List<DropdownMenuItem<String>> get allContacts {
  List<DropdownMenuItem<String>> contacts = [
    const DropdownMenuItem(
      value: '[contactName]',
      child: Text('[contactName]')
    ),
    const DropdownMenuItem(
      value: '[contactName]',
      child: Text('[contactName]')
    ),
    const DropdownMenuItem(
      value: '[contactName]',
      child: Text('[contactName]')
    )
  ];
  return contacts;
}
