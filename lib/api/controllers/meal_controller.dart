import '../models/meal.dart';
import '../repositories/meal_repository.dart';

class MealController {
  // The MealRepository instance that the controller uses to interact with the data source
  final MealRepo _mealRepository = MealRepo();

  // Fetch all breakfast meals
  Future<List<Meal>?>? getAllBreakfast() async {
    try {
      final meals = await _mealRepository.getAllBreakfast();
      return meals;
    } catch (e) {
      // You can handle any exceptions thrown here, e.g. log the error or show a snackbar
      rethrow;
    }
  }

  // Fetch a single meal by ID
  Future<Meal?> getMealByID(int id) async {
    try {
      final meal = await _mealRepository.getMealByID(id);
      return meal;
    } catch (e) {
      rethrow;
    }
  }

  // Remove a meal by ID
  Future<void> removeMealByID(int id) async {
    try {
      await _mealRepository.removeMealByID(id);
    } catch (e) {
      rethrow;
    }
  }

  // Order a new meal
  Future<Meal?> orderMeal(Meal meal) async {
    try {
      final orderedMeal = await _mealRepository.orderMeal(meal);
      return orderedMeal;
    } catch (e) {
      rethrow;
    }
  }
}
