import 'package:flutter/material.dart';
import '../constants/spaces.dart';

class AboutGharsSection extends StatelessWidget {
  const AboutGharsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "About Ghars",
          style: TextStyle(
            fontFamily: 'Lobster',
            fontSize: 30,
          ),
        ),
        GSpaces.gV8,
        const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            "A store that specializes in indoor and outdoor ornamental plants, which are carefully prepared to last. We are also keen to make your experience in purchasing plants and their supplies through the Ghars Store an easy and distinctive experience.",
            style: TextStyle(
              fontSize: 18,
              height: 1.2,
            ),
          ),
        ),
      ],
    );
  }
}
