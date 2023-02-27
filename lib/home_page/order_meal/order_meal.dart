import 'package:flutter/material.dart';
import 'package:mckenziechurch_project1/home_page/order_meal/meal_confirmation.dart';
import '../home_page.dart';

class OrderMeal extends StatelessWidget {
  //TODO: access user object fields
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home_page':(context) => HomePage(),
        '/meal_confirmation':(context) => MealConfirmation()
      },
      home: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(
                    Icons.shopping_basket_rounded,
                    size: 30,
                    semanticLabel: 'Order a meal',
                  ),
                  Text('Order a meal',
                  style: TextStyle(fontSize: 30)
                  )
                ]
              ),
              const SizedBox(height: 16),
            const Text(
              'Breakfast',
              semanticsLabel: 'Breakfast',
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              width: 500,
              child: ElevatedButton(
              onPressed: () {
                //TODO: ADD NAVIGATION - add to food list object/increment icon - STATEFUL?
              }, child: 
              const Text('[BREAKFAST item 1]',
              semanticsLabel: '[BREAKFAST item 1]'),
            ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 500,
              child: ElevatedButton(
              onPressed: () {
                //TODO: ADD NAVIGATION - add to food list object/increment icon - STATEFUL?
              }, child: 
              const Text('[BREAKFAST item 1]',
              semanticsLabel: '[BREAKFAST item 1]'),
            ),
            ),
             const SizedBox(height: 16),
            SizedBox(
              width: 500,
              child: ElevatedButton(
              onPressed: () {
                //TODO: ADD NAVIGATION - add to food list object/increment icon - STATEFUL?
              }, child: 
              const Text('[BREAKFAST item 1]',
              semanticsLabel: '[BREAKFAST item 1]'),
            ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Lunch',
              semanticsLabel: 'Lunch',
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
             const SizedBox(height: 16),
            SizedBox(
              width: 500,
              child: ElevatedButton(
              onPressed: () {
                //TODO: ADD NAVIGATION - add to food list object/increment icon - STATEFUL?
              }, child: 
              const Text('[LUNCH item 1]',
              semanticsLabel: '[LUNCH item 1]'),
            ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 500,
              child: ElevatedButton(
              onPressed: () {
                //TODO: ADD NAVIGATION - add to food list object/increment icon - STATEFUL?
              }, child: 
              const Text('[LUNCH item 1]',
              semanticsLabel: '[LUNCH item 1]'),
            ),
            ),
             const SizedBox(height: 16),
            SizedBox(
              width: 500,
              child: ElevatedButton(
              onPressed: () {
                //TODO: ADD NAVIGATION - add to food list object/increment icon - STATEFUL?
              }, child: 
              const Text('[LUNCH item 1]',
              semanticsLabel: '[LUNCH item 1]'),
            ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Dinner',
              semanticsLabel: 'Dinner',
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
             const SizedBox(height: 16),
            SizedBox(
              width: 500,
              child: ElevatedButton(
              onPressed: () {
                //TODO: ADD NAVIGATION - add to food list object/increment icon - STATEFUL?
              }, child: 
              const Text('[DINNER item 1]',
              semanticsLabel: '[DINNER item 1]'),
            ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 500,
              child: ElevatedButton(
              onPressed: () {
                //TODO: ADD NAVIGATION - add to food list object/increment icon - STATEFUL?
              }, child: 
              const Text('[DINNER item 1]',
              semanticsLabel: '[DINNER item 1]'),
            ),
            ),
             const SizedBox(height: 16),
            SizedBox(
              width: 500,
              child: ElevatedButton(
              onPressed: () {
                //TODO: ADD NAVIGATION - add to food list object/increment icon - STATEFUL?
              }, child: 
              const Text('[DINNER item 1]',
              semanticsLabel: '[DINNER item 1]'),
            ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 500,
              child: ElevatedButton(
              onPressed: () {
                //go to meal_confirmation
                Navigator.pushReplacementNamed(context, '/meal_confirmation');
              }, child: 
              const Text('Finish ordering',
              semanticsLabel: 'Finish ordering'),
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
