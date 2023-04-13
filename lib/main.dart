import 'package:flutter/material.dart';
import 'package:mckenziechurch_project1/home_page/emergency_help/emergency_help.dart';
import 'package:mckenziechurch_project1/home_page/home_page.dart';
import 'package:mckenziechurch_project1/home_page/non_emergency/non-emergency_help.dart';
import 'package:mckenziechurch_project1/home_page/order_meal/breakfast_screen.dart';
import 'package:mckenziechurch_project1/home_page/order_meal/meal_confirmation.dart';
import 'package:mckenziechurch_project1/home_page/order_meal/order_meal.dart';
import 'package:mckenziechurch_project1/home_page/settings/settings.dart';
import 'package:mckenziechurch_project1/login/login_confirm.dart';
import 'package:mckenziechurch_project1/login/login_page.dart';
import 'package:mckenziechurch_project1/profile_creation/profile_creation.dart';
import 'landing_screen/landing_screen.dart';

Future<void> main() async {
  runApp(const Personoo());
}

class Personoo extends StatelessWidget {
  const Personoo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/', routes: {
      '/': (context) => LandingPage(),
      '/emergency_help': (context) => EmergencyHelp(),
      '/non-emergency_help': (context) => NonEmergencyHelp(),
      '/order_meal': (context) => OrderMeal(),
      '/settings': (context) => SettingsPage(),
      '/login_page': (context) => LoginPage(),
      '/profile_creation': (context) => ProfilePage(),
      '/meal_confirmation': (context) => MealConfirmation(),
      '/home': (context) => HomePage(),
      '/landing': (context) => LandingPage(),
      '/confirm_login': (context) => ConfirmLogin(),
      '/create_profile': (context) => ProfilePage(),
      '/breakfast_screen': (context) => BreakfastScreen(),
    });
  }
}
