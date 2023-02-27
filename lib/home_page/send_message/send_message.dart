import 'package:flutter/material.dart';
import '../home_page.dart';
import '../send_message/message_confirm.dart';

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
      routes: {
        '/home_page':(context) => HomePage(),
        '/message_confirmation':(context) => MessageConfirmation()
      },
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
            SizedBox(
              width: 500,
              child: ElevatedButton(
              onPressed: () {
                //TODO: add dropdown button for contacts - attempted, but could not figure out
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
                //go to confirm page
                Navigator.pushReplacementNamed(context, '/message_confirmation');
              }, child: 
              const Text('Finished typing message',
              semanticsLabel: 'Finished typing message'),
            ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 500,
            child: OutlinedButton(
              onPressed: () {
                 //go to home_page
                 Navigator.pushReplacementNamed(context, '/home_page');
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
