import 'package:flutter/material.dart';
import 'first_screen.dart';
import 'second_screen.dart';
class RunScreen extends StatelessWidget {
  const RunScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SecondScreen(),
    );
  }
}
