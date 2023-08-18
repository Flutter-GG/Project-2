import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'app/Views/Intro/intro_view.dart';
import 'app/utils/constants/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: AnimatedSplashScreen(
        duration: 4000,
        splash: Image.asset('assets/imgs/textLogo.png'),
        splashIconSize: 100.0,
        nextScreen: const IntroView(),
        splashTransition: SplashTransition.slideTransition,
        pageTransitionType: PageTransitionType.rightToLeftWithFade,
        backgroundColor: backgroundColor,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
