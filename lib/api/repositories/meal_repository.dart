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

  // Future<Meal> addMeal(Meal meal) async {
  //   List<String> items = ["apple", "pear", "toast", "water"];
  //   Meal newMeal = Meal(items, "Breakfast", 1);

  // }
}
