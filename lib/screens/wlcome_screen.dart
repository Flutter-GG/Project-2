import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:ghars/constants/colors.dart';
import 'package:ghars/widgets/welcome_page_widgets/entry_options_widgets.dart';

class WelcomeScareen extends StatefulWidget {
  const WelcomeScareen({super.key});

  @override
  State<WelcomeScareen> createState() => _WelcomeScareenState();
}

class _WelcomeScareenState extends State<WelcomeScareen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GColors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 160,
              left: MediaQuery.of(context).size.width * 0.30,
              child: AnimatedTextKit(
                isRepeatingAnimation: false,
                animatedTexts: [
                  TyperAnimatedText(
                    "Ghars",
                    speed: const Duration(milliseconds: 300),
                    // curve: Curves.bounceIn,
                    textStyle: const TextStyle(
                      fontSize: 65,
                      fontFamily: 'Lobster',
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 100,
              child: Image.network(
                "https://cdn-icons-png.flaticon.com/128/3042/3042268.png",
                width: MediaQuery.of(context).size.width,
                errorBuilder: (context, error, stackTrace) =>
                    const Center(child: Icon(Icons.error)),
              ),
            ),
            const Positioned(
              bottom: 100,
              left: 30,
              child: EntryOptions(),
            )
          ],
        ),
      ),
    );
  }
}
