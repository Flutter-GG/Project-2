import 'package:flutter/material.dart';

class LogoImage extends StatelessWidget {
  const LogoImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.only(right: 90.0),
            child: Image.asset(
              'assets/imgs/LOGO.png',
              width: 500,
              height: 500,
            ),
          ),
        ),
      ],
    );
  }
}
