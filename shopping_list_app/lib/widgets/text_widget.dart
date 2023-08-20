import 'package:flutter/material.dart';
import 'package:shopping_list_app/utils/colors_app.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    this.text = '',
    this.size = 18,
    this.isFontWeight = false,
    this.textAlign,
    this.textColor = ColorsApp.blackColor,
  });
  final String text;
  final double size;
  final bool isFontWeight;
  final TextAlign? textAlign;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontWeight: isFontWeight != true ? FontWeight.w300 : FontWeight.w600,
          fontSize: size,
          color: textColor),
      textAlign: textAlign,
    );
  }
}
