import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.buttonText = "defult",
    this.backgroundColor = 0xff63c5b9,
    this.foregroundColor = 0xffFFFFFF,
    this.borderColor = 0xff63c5b9,
    this.onPressed,
    this.borderSmooth = 14,
    required this.width,
    this.height = 50,
    this.isTextButton = true,
    this.icon,
  });

  final String buttonText;
  final int backgroundColor;
  final int foregroundColor;
  final int borderColor;
  final Function()? onPressed;
  final double borderSmooth;
  final double width;
  final double height;
  final bool isTextButton;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(backgroundColor),
        foregroundColor: Color(foregroundColor),
        side: BorderSide(color: Color(borderColor)),
        fixedSize: Size(width, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderSmooth),
        ),
      ),
      child: isTextButton ? Text(buttonText) : Icon(icon),
    );
  }
}
