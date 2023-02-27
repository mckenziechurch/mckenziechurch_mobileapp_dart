import 'package:flutter/material.dart';
import 'home_page/home_page.dart';

void main() => runApp(const Personoo());

class Personoo extends StatelessWidget {
  const Persnoo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}