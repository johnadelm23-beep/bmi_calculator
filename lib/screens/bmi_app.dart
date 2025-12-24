import 'package:flutter/material.dart';
import 'package:my_screen/screens/home_screen.dart';

import 'home_screen.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:FirstScreen(),
      
    );
  }
}