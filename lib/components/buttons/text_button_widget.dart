import 'package:flutter/material.dart';
import 'package:hw2/components/text/text_widget.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({super.key, this.onPress, required this.text, required this.size, this.color = Colors.black});
  final Function()? onPress;
  final String text;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: (onPress),
        child: TextWidget(
          text: text,
          size: size,
          isBold: true,
          color: color,
        ));
  }
}
