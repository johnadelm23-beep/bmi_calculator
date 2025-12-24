import 'package:flutter/material.dart';
class InfoContainersSign extends StatelessWidget {
  const InfoContainersSign({super.key, required this.title, required this.date, required this.icon, required this.color});
final String title;
  final String date;
  final IconData icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
return  Padding(
padding: const EdgeInsets.only(left: 15,right: 15),
child: Container(
width: double.infinity,
height: 80,
decoration: BoxDecoration(borderRadius: BorderRadius.circular(0),color: Colors.white70),
child: Padding(
padding: const EdgeInsets.only(left: 5),
child: Column(
mainAxisAlignment: .spaceEvenly,
crossAxisAlignment: .start,
children: [
Text(title,style: TextStyle(fontSize: 20,color: Colors.black),),
Row(

children: [
Icon(Icons.alarm,size: 25,color: Colors.black,),
Text(date,style: TextStyle(fontSize: 20,color: Colors.black ),),
  Spacer(),
  Icon(icon,size:35,color: color,)

],
)
],
),
),
),
);
}
}
