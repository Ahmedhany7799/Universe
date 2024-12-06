import 'package:flutter/material.dart';
import 'package:space_app/home_screen.dart';
import 'package:space_app/mainhome.dart';
import 'package:space_app/planet_descriptions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
