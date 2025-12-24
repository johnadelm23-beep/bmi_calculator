import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff6094E8), Color(0xffCD62C0)],
            begin: .topCenter,
            end: .bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Container(
              width: 180,
              height: 180,
              alignment: .center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(180),
                color: Colors.white,
              ),
              child: Icon(Icons.beach_access, size: 60, color: Colors.red),
            ),
           SizedBox(height: 10,),
            Text("This is a sample text",style: TextStyle(fontSize: 20,color: Colors.white),)
          ],
        ),
      ),
    );
  }
}
