import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_screen/wedgits/custom_app_bar.dart';
import 'package:my_screen/wedgits/result_container.dart';

///import 'package:my_screen/wedgits/result_container.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({super.key, required this.resultNumber});

  final double resultNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C2134),
      appBar: CustomAppBar(withLeading: true),
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

            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                width: double.infinity,
                height: 502,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xff333244),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: .center,
                            children: [
                              Text(
                                getStatusText(),
                                style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: colorStatus,
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 33),
                          Text(
                            resultNumber.toStringAsFixed(2),
                            style: TextStyle(
                              fontSize: 64,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 70),
                          Text(
                            title,
                            style: TextStyle(fontSize: 25, color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String title = "";
  Color colorStatus = Colors.green;
  String getStatusText() {
    if (resultNumber < 18.5) {
      title = "Try to eat balanced meals and focus on healthy weight gain.";
      colorStatus = Colors.yellowAccent;
      return "UnderWeight";
    } else if (resultNumber >= 18.5 && resultNumber < 24.9) {
      title = "Keep maintaining your healthy lifestyle.";
      colorStatus = Colors.green;
      return "Normal";
    } else if (resultNumber >= 25 && resultNumber < 30) {
      title =
          " Small lifestyle changes and regular activity can help improve your health.";
      colorStatus = Colors.red;
      return "OverWeight";
    } else {
      title =
          "Focus on gradual, healthy habits and consider professional guidance.";
      colorStatus = Colors.deepOrange;
      return "Obese";
    }
  }
}
