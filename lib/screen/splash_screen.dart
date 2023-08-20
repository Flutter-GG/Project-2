import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:project2/screen/init_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splashIconSize: 350,
        backgroundColor: Colors.white,
        pageTransitionType: PageTransitionType.topToBottom,
        splashTransition: SplashTransition.fadeTransition,
        splash: const CircleAvatar(
          radius: 300,
          backgroundImage: AssetImage("assets/images/logo.png"),
        ),
        nextScreen: InitScreen(),
        duration: 5000,
        animationDuration: const Duration(seconds: 5));
  }
}
