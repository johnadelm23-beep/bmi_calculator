import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_screen/screens/result_screen.dart';
import 'package:my_screen/wedgits/custom_app_bar.dart';
import 'package:my_screen/wedgits/gender_container.dart';
import 'package:my_screen/wedgits/weight_age_container.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  bool isMAle = false;
  bool isFemale = false;
  bool isOn = false;
  int height = 50;
  int weight = 0;
  int age = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C2134),
      appBar: CustomAppBar(withLeading: false),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 26),
        child: Column(
          children: [
            Row(
              children: [
                GenderContainer(
                  title: "Male",
                  icon: Icons.male,
                  color: isMAle ? Color(0xffF53A84) : Color(0xff24263B),
                  onTap: () {
                    setState(() {
                      isMAle = true;
                      isFemale = false;
                    });
                  },
                ),
                SizedBox(width: 9),
                GenderContainer(
                  title: "Female",
                  icon: Icons.female,
                  onTap: () {
                    setState(() {
                      isFemale = true;
                      isMAle = false;
                    });
                  },
                  color: isFemale ? Color(0xffF53A84) : Color(0xff24263B),
                ),
              ],
            ),
            SizedBox(height: 25),
            Container(
              width: double.infinity,
              height: 189,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xff24263B),
              ),
              child: Column(
                mainAxisAlignment: .spaceEvenly,
                children: [
                  Text(
                    "Height",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: height.toString(),
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(
                          text: "cm",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Slider(
                    max: 300,
                    min: 0,

                    activeColor: Color(0xffE83D67),
                    inactiveColor: Colors.white,
                    value: height.toDouble(),
                    onChanged: (value) {
                      setState(() {
                        isOn = true;
                        height = value.toInt();
                      });
                    },
                  ),
                ],
              ),
            ),

            SizedBox(height: 29),
            Row(
              children: [
                WeightAgeContainer(
                  number: weight,
                  title: "Weight",
                  increase: () {
                    setState(() {
                      weight++;
                    });
                  },
                  decrease: () {
                    setState(() {
                      if (weight > 10) {
                        weight--;
                      }
                    });
                  },
                ),
                SizedBox(width: 9),
                WeightAgeContainer(
                  number: age,
                  title: "Age",
                  increase: () {
                    setState(() {
                      age++;
                    });
                  },
                  decrease: () {
                    setState(() {
                      if (age > 10) {
                        age--;
                      }
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          double finalHeight = height / 100;
          double finalResult = weight / pow(finalHeight, 2);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SecondScreen(resultNumber: finalResult),
            ),
          );
        },
        child: Container(
          height: 80,
          color: Color(0xffF53A84),
          alignment: .center,
          child: Text(
            "Calculate",
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
