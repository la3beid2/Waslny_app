import 'package:flutter/material.dart';
import '../loading.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 4), () {
    
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LoadingScreen()), // Replace with your main screen
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3FA2F6), 
      body: Center(
        child: Image.asset('assets/images/whitelogo.png',height: 600,width: 240,), 
      ),
    );
  }
}
