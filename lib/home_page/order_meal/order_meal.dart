import 'package:flutter/material.dart';
import '../order_meal/combo_screen.dart';

class OrderMeal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    semanticLabel: 'Select a meal to order',
                  ),
                  Text('Select a meal to order', style: TextStyle(fontSize: 30))
                ]),
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MealDetailScreen(id: 1),
                    ),
                  );
                },
                child: const Text('Combo 1', semanticsLabel: 'Combo 1'),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 500,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MealDetailScreen(id: 2)));
                },
                child: const Text('Combo 2', semanticsLabel: 'Combo 2'),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 500,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MealDetailScreen(id: 3)));
                },
                child: const Text('Combo 3', semanticsLabel: 'Combo 3'),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 500,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/breakfast_screen');
                },
                child: const Text('All Combos', semanticsLabel: 'All Combos'),
              ),
            ),
            const SizedBox(height: 22),
            SizedBox(
              width: 500,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/meal_confirmation');
                },
                child: const Text('Finish ordering',
                    semanticsLabel: 'Finish ordering'),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
                width: 500,
                child: OutlinedButton(
                    onPressed: () {
                      //go to home_page
                      Navigator.pop(context);
                    },
                    child: const Text('Back', semanticsLabel: 'Back')))
          ],
        ),
      ),
    );
  }
}
