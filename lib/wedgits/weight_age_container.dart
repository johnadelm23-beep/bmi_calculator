import 'package:flutter/material.dart';

class WeightAgeContainer extends StatelessWidget {
  final String title;
  final int number;
  final void Function()? increase;
  final void Function()? decrease;

  const WeightAgeContainer({
    super.key,
    required this.number,
    required this.increase,
    required this.title,
    required this.decrease,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 155,
        height: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(0xff24263B),
        ),
        child: Column(
          mainAxisAlignment: .spaceEvenly,
          children: [
            Text(title, style: TextStyle(fontSize: 20, color: Colors.white)),
            Text(
              number.toString(),
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            Row(
              mainAxisAlignment: .spaceEvenly,
              children: [
                FloatingActionButton(
                  heroTag: "$title 1",
                  onPressed: increase,
                  backgroundColor: Color(0xff8B8C9E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(180),
                  ),
                  child: Icon(Icons.add, size: 32, color: Colors.white),
                ),

                SizedBox(width: 35),
                FloatingActionButton(
                  heroTag: "$title 2",
                  onPressed: decrease,
                  backgroundColor: Color(0xff8B8C9E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(180),
                  ),
                  child: Icon(Icons.remove, size: 32, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
