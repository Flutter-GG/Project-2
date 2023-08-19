import 'package:flutter/material.dart';
import 'package:ghars/constants/colors.dart';
import 'package:ghars/constants/spaces.dart';

class CircularIcon extends StatelessWidget {
  const CircularIcon({
    super.key,
    required this.icon,
    required this.title,
  });
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: GColors.lightMint,
          radius: 40,
          child: Icon(
            icon,
            color: GColors.black,
            size: 50,
          ),
        ),
        GSpaces.gV8,
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
