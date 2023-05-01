import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:mckenziechurch_project1/firebase_options.dart';
import 'package:mckenziechurch_project1/home_page/emergency_help/emergency_help.dart';
import 'package:mckenziechurch_project1/home_page/home_page.dart';
import 'package:mckenziechurch_project1/home_page/map/map.dart';
import 'package:mckenziechurch_project1/home_page/non_emergency/non-emergency_help.dart';
import 'package:mckenziechurch_project1/home_page/order_meal/breakfast_screen.dart';
import 'package:mckenziechurch_project1/home_page/order_meal/meal_confirmation.dart';
import 'package:mckenziechurch_project1/home_page/order_meal/order_meal.dart';
import 'package:mckenziechurch_project1/home_page/settings/settings.dart';
import 'package:mckenziechurch_project1/login/firebase_login.dart';
import 'package:mckenziechurch_project1/login/login_confirm.dart';
import 'package:mckenziechurch_project1/login/login_page.dart';
import 'package:mckenziechurch_project1/profile_creation/profile_creation.dart';
import 'package:mckenziechurch_project1/take_photo/take_photo.dart';
import 'landing_screen/landing_screen.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  final cameras = await availableCameras();
  final firstCamera = cameras.first;

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
      '/firebase_login': (context) => AuthGate(),
      '/map': (context) => MapPage(),
    });
  }
}
