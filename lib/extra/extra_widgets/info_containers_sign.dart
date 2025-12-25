import 'package:flutter/material.dart';
class InfoContainerSign extends StatelessWidget {
  const InfoContainerSign({super.key, required this.name, required this.time, required this.icon, required this.color});
  final String name;
  final String time;
  final IconData icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(borderRadius: BorderRadiusGeometry.circular(12),color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(

          children: [
            Column(
              mainAxisAlignment: .spaceEvenly,
              crossAxisAlignment: .start,
              children: [
                Text(name,style: TextStyle(fontSize: 20,color: Colors.black),),
                Row(
                  crossAxisAlignment: .end,
                  children: [
                    Icon(Icons.alarm,color: Colors.black,),
                    Text(time,style: TextStyle(color: Colors.black),)
                  ],
                )

              ],
            ),
            Spacer(),
            Column(
              mainAxisAlignment: .center,
              crossAxisAlignment: .end,
              children: [
                Icon(icon,color: color,size: 35,)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
