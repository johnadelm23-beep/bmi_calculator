import 'package:flutter/material.dart';
import 'package:my_screen/extra/extra_widgets/info_container.dart';
import 'package:my_screen/extra/extra_widgets/info_containers_sign.dart';
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(

      backgroundColor: Colors.blue,
      leading:Icon(Icons.local_hospital,size: 40,color: Colors.white,),
      title: Text("Appointments",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 35),),
      actions: [Icon(Icons.list_sharp,size: 40,color: Colors.white,)],
    ),
    body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Row(
            mainAxisAlignment: .center,
            children: [
              Text("Wednesday, 22 May 2019",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),)
            ],
          ),
        ),

      SizedBox(height: 90,),
      InfoContainer(title: "Julian Raja", time: " 10:50"),
        SizedBox(height: 5,),
        InfoContainer(title: "Victoria Olari", time: " 13:00"),
        SizedBox(height: 5,),
        InfoContainer(title: "Diana Stefan", time: " 15:20"),
        SizedBox(height: 5,),
        InfoContainerSign(name: "Alexandru Sandu", time: " 16:40", icon: Icons.close, color: Colors.red),
        SizedBox(height: 5,),
        InfoContainerSign(name: "Dumitru Simona", time: " 08:00", icon: Icons.done_all, color: Colors.blue),
      ],
    ),
  );}}

