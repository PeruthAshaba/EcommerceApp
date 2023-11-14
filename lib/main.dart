import 'package:flutter/material.dart';
import 'pages/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blessed Online Shop App',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      
    );
  }
}

