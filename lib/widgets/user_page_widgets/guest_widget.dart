import 'package:flutter/material.dart';
import 'package:ghars/constants/spaces.dart';
import 'package:ghars/screens/wlcome_screen.dart';
import 'package:ghars/utils/extintions.dart';
import 'package:jelly_anim/jelly_anim.dart';
import '../../constants/colors.dart';

class GusetWidget extends StatelessWidget {
  const GusetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 180,
          left: 120,
          child: JellyAnim(
              jellyCount: 1,
              radius: 180,
              viewPortSize: const Size(150, 250),
              jellyCoordinates: 10,
              allowOverFlow: true,
              colors: const [
                GColors.lightMint,
              ],
              duration: const Duration(milliseconds: 200),
              jellyPosition: JellyPosition.bottomCenter),
        ),
        Positioned(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Try To log in or create an account to access more features",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GSpaces.gV16,
                ElevatedButton(
                  onPressed: () {
                    context.push(screen: const WelcomeScareen());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: GColors.white,
                  ),
                  child: const Text(
                    "Go to Start page",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: GColors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
