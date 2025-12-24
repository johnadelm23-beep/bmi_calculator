import 'package:flutter/material.dart';
import 'package:my_screen/wedgits/result_container.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C2134),
      appBar: AppBar(
        backgroundColor: Color(0xff24263B),
        title: Text(
          "BMI Calculator",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 22),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Your Result",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            ResultContainer(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        color: Color(0xffF53A84),
        alignment: .center,
        child: Text(
          "Re - Calculate",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
