import 'package:flutter/material.dart';
class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C2134),
      appBar: AppBar(
        backgroundColor: Color(0xff24263B),
        title: Text("BMI Calculator",style: TextStyle(fontSize: 20,color: Colors.white),),centerTitle: true,

      ),
 body:Padding(
   padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 26),
   child: Column(
    children: [
      Row(
        children: [
          Expanded(
            child: Container(
              width: 155,
              height: 180,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Color(0xff24263B)),
              child: Column(
                children: [
                  Icon(Icons.male,size: 144,color: Colors.white,),
                  Text("Male",style: TextStyle(fontSize: 20,color: Colors.white),),
                ],
              ),
            ),
          )
       , SizedBox(width: 9,)
        , Expanded(
          child: Container(
              width: 155,
              height: 180,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Color(0xff24263B)),
              child: Column(
                children: [
                  Icon(Icons.female,size: 144,color: Colors.white,),
                  Text("Female",style: TextStyle(fontSize: 20,color: Colors.white),),
                ],
              ),
            ),
        )
        ],
      ),
     SizedBox(height: 25,),
      Container(
        width: double.infinity,
        height: 189,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Color(0xff24263B)),
        child: Column(
          mainAxisAlignment: .spaceEvenly,
          children: [
            Text("Height",style: TextStyle(fontSize: 20,color: Colors.white),),
            Text.rich(TextSpan(children:[
              TextSpan(text: "150",style: TextStyle(fontSize:50,fontWeight: FontWeight.bold,color: Colors.white )),
              TextSpan(text: "cm",style: TextStyle(fontSize: 14,color: Colors.white)),

            ]))
           , Slider(max: 300,
           min: 0,
           activeColor: Color(0xffE83D67),
           inactiveColor: Colors.white,
            value: 175, onChanged: (value){
              print("$value");
            })

          ],
        ),
      ),
     SizedBox(height: 29,),
      Row(
        children: [
          Expanded(
            child: Container(
              width: 155,
              height: 180,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Color(0xff24263B)),
              child: Column(
                mainAxisAlignment: .spaceEvenly,
                children: [
                  Text("Weight",style: TextStyle(fontSize: 20,color: Colors.white),),
                  Text("60",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),)
                  , 
                  
                  Row(
                    mainAxisAlignment: .spaceEvenly,
                    children:[ FloatingActionButton(onPressed: (){},
                      backgroundColor: Color(0xff8B8C9E),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(180)),
                      child: Icon(Icons.add,size: 32,color: Colors.white,),
                    
                     ),
                  
                 SizedBox(width: 35,)
              , FloatingActionButton(onPressed: (){},
                    backgroundColor: Color(0xff8B8C9E),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(180)),
                    child: Icon(Icons.remove,size: 32,color: Colors.white,),
                    
                   )
                    ]
                  )
                ],
              ),
            
            ),
          )
         ,SizedBox(width: 9,)
       ,  Expanded(
         child: Container(
              width: 155,
              height: 180,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Color(0xff24263B)),
              child: Column(
                mainAxisAlignment: .spaceEvenly,
                children: [
                  Text("Age",style: TextStyle(fontSize: 20,color: Colors.white),),
                  Text("20",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),)
                  , 
                  
                  Row(
                    mainAxisAlignment: .spaceEvenly,
                    children:[ FloatingActionButton(onPressed: (){},
                      backgroundColor: Color(0xff8B8C9E),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(180)),
                      child: Icon(Icons.add,size: 32,color: Colors.white,),
                    
                     ),
                  
                 SizedBox(width: 35,)
              , FloatingActionButton(onPressed: (){},
                    backgroundColor: Color(0xff8B8C9E),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(180)),
                    child: Icon(Icons.remove,size: 32,color: Colors.white,),
                    
                   )
                    ]
                  )
                ],
              ),
         
            ),
       )
           
               
        ],
      ),
        //  SizedBox(height: 140,),
       
    ],
    
   ),
 ) ,
   bottomNavigationBar: Container(
    height: 80,
    color: Color(0xffF53A84),
    alignment: .center,
    child: Text("Calculate",style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),
   ),
   // bottomNavigationBar: BottomNavigationBar(items: [BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "")]),
    );
  }
}