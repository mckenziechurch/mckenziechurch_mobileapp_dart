import 'dart:convert';

class Meal {
  List<String> items = [];
  String type = 'Breakfast';
  int id = 0;
  Meal();

  Meal.fromJSON(Map<String, dynamic> json) {
    try {
      print('json -> $json');

      if (json['items'] != null && json['items'].length > 0) {
        List<String> meal_items = jsonDecode(jsonEncode(json['items']));
      }
      type = json['type'];
      id = json['id'];
    } catch (e) {
      throw const FormatException('Meal JSON invalid.');
    }
  }
}
