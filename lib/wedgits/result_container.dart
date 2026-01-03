import 'package:flutter/material.dart';

class ResultContainer extends StatelessWidget {
  const ResultContainer({
    super.key,
    required this.text,
    required this.result,
    required this.status,
  });
  final String text;
  final double result;
  final String status;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 502,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xff333244),
      ),
      child: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 58, left: 125, right: 123),
                child: Row(
                  mainAxisAlignment: .center,
                  children: [
                    Text(
                      status,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff21BF73),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 33),
              Text(
                result.toStringAsFixed(2),
                style: TextStyle(
                  fontSize: 64,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 70),
              Text(
                text,
                style: TextStyle(fontSize: 16, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
