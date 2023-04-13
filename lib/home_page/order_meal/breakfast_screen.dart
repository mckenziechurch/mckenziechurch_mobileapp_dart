// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import '../../api/models/meal.dart';
import '../../api/controllers/meal_controller.dart';

class BreakfastScreen extends StatefulWidget {
  const BreakfastScreen({Key? key}) : super(key: key);

  @override
  _BreakfastScreenState createState() => _BreakfastScreenState();
}

class _BreakfastScreenState extends State<BreakfastScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Text(
            'Breakfast Combos',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: _BreakfastTable(),
          ),
        ],
      ),
    );
  }
}

class _BreakfastTable extends StatelessWidget {
  const _BreakfastTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mealController = MealController();
    return FutureBuilder<List<Meal>?>(
      future: mealController.getAllBreakfast(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return const Center(child: Text('Error while fetching data'));
        } else {
          final mealList = snapshot.data ?? [];
          return Column(children: [
            Scrollbar(
              child: DataTable(
                columns: _createBreakfastColumns(),
                rows: _createBreakfastRows(mealList, context),
              ),
              // OutlinedButton(
              //         onPressed: () {
              //           //go to home_page
              //           Navigator.pop(context);
              //         },
              //         child: const Text('Back', semanticsLabel: 'Back'))
            )
          ]);
        }
      },
    );
  }
}

List<DataColumn> _createBreakfastColumns() {
  return const [
    DataColumn(label: Text('Items')),
    DataColumn(label: Text('Type')),
    DataColumn(label: Text('ID')),
  ];
}

List<DataRow> _createBreakfastRows(List<Meal> mealList, BuildContext context) {
  return mealList
      .map(
        (meal) => DataRow(
          cells: [
            DataCell(Text('${meal.items}')),
            DataCell(Text('${meal.type}')),
            DataCell(Text('${meal.id}')),
          ],
          onSelectChanged: (value) {
            // Add code here to handle row selection
          },
        ),
      )
      .toList();
}
