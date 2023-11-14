import 'package:flutter/material.dart';
import 'onboard2.dart';

class OnboardScreen extends StatelessWidget{
  const OnboardScreen({super.key});

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
           const  Text(' Welcome to Blessed Online Shop! Discover Fashion Bliss with Us!',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),),
             Image.asset('assets/images/splash.jpg',
               width:300.0,
               height:200.0,
            
             ),
             
             
            
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> OnboardScreenTwo()));
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