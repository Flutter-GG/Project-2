import 'package:flutter/material.dart';
import 'package:shopping_list/app/Views/Intro/widgets/image_logo.dart';
import 'package:shopping_list/app/Views/Intro/widgets/intro_titles.dart';
import '../../utils/constants/colors.dart';
import 'widgets/intro_buttons.dart';
import 'widgets/intro_icon.dart';

class IntroView extends StatelessWidget {
  const IntroView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: purpleColor,
      body: Stack(
        children: [
          IntroTitle(),
          LogoImage(),
          IntroButtons(),
          IntroIcon(),
        ],
      ),
    );
  }
}
