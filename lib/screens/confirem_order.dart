import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:project_2/constant/colors.dart';
import 'package:project_2/constant/extinsions.dart';
import 'package:project_2/screens/home_list.dart';

class ConfiremOrder extends StatefulWidget {
  const ConfiremOrder({super.key});

  @override
  State<ConfiremOrder> createState() => _ConfiremOrderState();
}

class _ConfiremOrderState extends State<ConfiremOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WColors.backG,
        appBar:AppBar(
        backgroundColor: WColors.darkRed,
        elevation: 0,
        leading: const BackButton(color: Color.fromARGB(255, 255, 254, 254)),
      
    ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'Thank you!we will contact you soon',
                  textStyle: const TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: WColors.darkRed),
                  textAlign: TextAlign.center,
                  speed: const Duration(milliseconds: 100),
                ),
              ],
              totalRepeatCount: 4,
              pause: const Duration(milliseconds: 10),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
            IconButton(
                onPressed: () {
                  context.pushPage(screen: Home());
                },
                icon: Icon(Icons.home))
          ],
        ),
      ),
    );
  }
}
