import 'package:flutter/material.dart';
import 'package:mckenziechurch_project1/api/models/meal.dart';
import '../../api/controllers/meal_controller.dart';

class MealDetailScreen extends StatefulWidget {
  static final MealController _mealController = MealController();
  final int id;
  const MealDetailScreen({Key? key, required this.id}) : super(key: key);

  @override
  _MealDetailScreenState createState() => _MealDetailScreenState();
}

class _MealDetailScreenState extends State<MealDetailScreen> {
  late Future<Meal?> _mealFuture;

  @override
  void initState() {
    super.initState();
    _mealFuture = MealDetailScreen._mealController.getMealByID(widget.id);
  }

  void _orderMeal(Meal meal) {
    MealDetailScreen._mealController.orderMeal(meal);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Order Confirmed'),
        content: Text('Combo ${meal.id} has been added to your order.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FutureBuilder<Meal?>(
              future: _mealFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return const Text('Error while fetching data');
                } else if (snapshot.data == null) {
                  return const Text('Meal not found');
                } else {
                  Meal meal = snapshot.data!;
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        meal.id.toString(),
                        style: const TextStyle(fontSize: 24),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Items: ${meal.items}',
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () => _orderMeal(meal),
                        child: const Text('Order Now'),
                      ),
                      const SizedBox(height: 16),
                      OutlinedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Back', semanticsLabel: 'Back'))
                    ],
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
