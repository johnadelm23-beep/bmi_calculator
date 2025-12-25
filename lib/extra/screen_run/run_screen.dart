import 'package:flutter/material.dart';
import '../extra_screens/first_screen.dart';
import '../extra_screens/second_screen.dart';
class RunScreen extends StatelessWidget {
  const RunScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SecondScreen(),
    );
  }
}
