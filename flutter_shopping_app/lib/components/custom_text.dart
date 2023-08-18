import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    this.fontWeight,
    this.color,
    this.fontSize,
    required this.text,
    this.isOverflow = true,
  });
  final FontWeight? fontWeight;
  final Color? color;
  final double? fontSize;
  final String text;
  final bool isOverflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: isOverflow ? TextOverflow.ellipsis : null,
      style:
          TextStyle(color: color, fontWeight: fontWeight, fontSize: fontSize),
      text,
    );
  }
}
