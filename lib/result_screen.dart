import 'package:flutter/material.dart';
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
     
      backgroundColor: Color(0xff1C2134),
      appBar: AppBar(
        backgroundColor: Color(0xff24263B),
        title: Text("BMI Calculator",style: TextStyle(fontSize: 20,color: Colors.white),),centerTitle: true,

    )
  ,  body: Padding(
    padding: const EdgeInsets.symmetric(vertical:25 ,horizontal:22 ),
    child: Column(
      children: [
       
        Row(
          children: [
            Text("Your Result",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color:Colors.white),),
            
          ],
        )
       ,SizedBox(height: 25,)
       ,Container(
        width:double.infinity ,
        height: 502,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Color(0xff333244)),
        child: Column(
          //mainAxisAlignment: .spaceEvenly,
          children: [
             Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 58,left: 125,right: 123),
                  child: Row(
                    mainAxisAlignment: .center,
                  children: [
                  Text("Normal",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xff21BF73))),
                  ]
                  ),
                ),
                 SizedBox(height: 33,),
                Text("19.2",style: TextStyle(fontSize: 64,fontWeight: FontWeight.bold,color: Colors.white),),
                  SizedBox(height: 70,)
,                Text("You Have a Normal Body Weight,\n                  Good Job.",style: TextStyle(fontSize: 16,color: Colors.white),),
              ],
             )

          ],
        ),
      
       )
     
        
      ],
    ),
  ),
      bottomNavigationBar: Container(
        height: 80,
color: Color(0xffF53A84),
alignment: .center,
child: Text("Re - Calculate",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),),

      ),
    );
  }
}