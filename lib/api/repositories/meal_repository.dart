import 'dart:convert';
import 'dart:io';

import '../models/meal.dart';
import 'package:http/http.dart' as http;

class MealRepo {
  Future<List<Meal>> getAllBreakfast() async {
    try {
      var url = Uri.parse("http://localhost:8080/api/v1/meal/breakfast");
      var response = await http.get(url);
      if (response.statusCode == HttpStatus.accepted) {
        Iterable breakfastIterJSON = jsonDecode(response.body);
        List<Meal> mealList = List<Meal>.from(
            breakfastIterJSON.map((data) => Meal.fromJSON(data)));

        return mealList;
      }
    } catch (error) {
      print(error);
    }
    return [];
  }

  Future<Meal> getMealByID(int id) async {
    Meal meal = Meal();
    try {
      var url = Uri.parse("http://localhost:8080/api/v1/meal/breakfast/$id");
      var response = await http.get(url);

      if (response.statusCode == HttpStatus.accepted) {
        meal = Meal.fromJSON(jsonDecode(response.body));

        return meal;
      }
    } catch (error) {
      print(error);
    }
    return meal;
  }

  Future<String?> removeMealByID(int id) async {
    String msg = "Meal removed.";
    try {
      var url = Uri.parse("http://localhost:8080/api/v1/meal/breakfast/$id");
      var response = await http.delete(url);
      if (response.statusCode == HttpStatus.accepted) {
        return msg;
      }
    } catch (error) {
      print(error);
    }
    return "Error occurred.";
  }

  Future<Meal> orderMeal(Meal meal) async {
    var url = Uri.parse("http://localhost:8080/api/v1/requests/meal/add");
    final response = await http.post(url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(meal.toJSON()));

    return Meal.fromJSON(jsonDecode(response.body));
  }
}
