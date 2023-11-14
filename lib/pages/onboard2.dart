import 'package:flutter/material.dart';
import 'onboard.dart';
import 'login.dart';
class OnboardScreenTwo extends StatelessWidget{
  const OnboardScreenTwo({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 253, 252, 252), 
        appBar: AppBar(
        title: Text('Blessed Online Shop'),
      ),
        
        body:Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
           const  Text('Quality craftsmanship for every piece in our collection.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),),
             Image.asset('assets/images/splash-1.jpg',
               width:300.0,
               height:200.0,
            
             ),
             
             
             
            
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
              },
              child: Text('Next'),
              )
            
            

          ],
        ),
        ),

         ),
      );
    
  }
}