import 'package:flutter/material.dart';
import 'onboard.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Delayed navigation logic
    Future.delayed(Duration(seconds: 6), () {
      // Navigate to the OnboardScreen after 5 seconds
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => OnboardScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 180, 180, 243),

      // SplashScreen UI
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/logo.jpg'),
                ),
              ),
            ),
            SizedBox(height: 20), 
            Text(
              'Blessed Online Shop',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
