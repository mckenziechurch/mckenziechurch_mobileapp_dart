import 'package:flutter/material.dart';
import '../home_page.dart';

class MealConfirmation extends StatelessWidget {
  //TODO: access user object fields (meal list object)
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home_page':(context) => HomePage()
      },
      home: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           const Text(
              'Is this meal correct?',
              semanticsLabel: 'Is this meal correct?',
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
              const SizedBox(height: 16),
            RichText(
              text: const TextSpan(
                text: '[Complete meal]'
              '[meal details]'
              '[meal details]',
              semanticsLabel: '[Complete meal]'
              '[meal details]'
              '[meal details]',
              style: TextStyle(fontSize: 30),
              ),
              textAlign: TextAlign.center
            ),
            const SizedBox(height: 16),
            const Text(
              'Add comments',
              semanticsLabel: 'Add comments',
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            const TextField(
              maxLines: 5,
              decoration: InputDecoration(
                hintText: 'Is there anything that you would like us to know about your meal?',
                semanticCounterText: 'Is there anything that you would like us to know about your meal?',
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
                //go to home_page
                Navigator.pushReplacementNamed(context, '/home_page');
              }, child: 
              const Text('Complete meal order',
              semanticsLabel: 'Complete meal order'),
            ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 500,
            child: OutlinedButton(
              onPressed: () {
                 //go to order_meal
                 Navigator.pop(context);
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
