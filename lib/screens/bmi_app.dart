import 'package:flutter/material.dart';
import 'package:my_screen/screens/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff1C2134),
        iconTheme: IconThemeData(color: Colors.white),
        appBarTheme: AppBarThemeData(
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}
