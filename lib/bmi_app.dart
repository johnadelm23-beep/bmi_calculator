import 'package:flutter/material.dart';
import 'package:my_screen/result_screen.dart';
import 'home_screen.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
    );
  }
}