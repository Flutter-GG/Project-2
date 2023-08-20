import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.text,
    this.size = 24,
    this.isBold = false,
    this.color = Colors.black,
    this.lineThrough = false, this.overflow,
  });
  final String text;
  final double size;
  final bool isBold;
  final bool lineThrough;
  final Color color;
  final TextOverflow? overflow;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
        fontSize: size,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
        color: color,
        decoration: lineThrough ? TextDecoration.lineThrough : null,
      ),
    );
  }
}
