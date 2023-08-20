import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../utils/constants/colors.dart';

class IntroIcon extends StatelessWidget {
  const IntroIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.width * 0.24,
      right: MediaQuery.of(context).size.width * 0.22,
      child: Transform.rotate(
        angle: 0.4,
        child: const FaIcon(
          FontAwesomeIcons.fileLines,
          color: backgroundColor,
          size: 48,
        ),
      ),
    );
  }
}
