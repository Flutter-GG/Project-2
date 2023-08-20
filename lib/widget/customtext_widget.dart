import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CustomTextWidget extends StatelessWidget {
  CustomTextWidget(
      {super.key,
      required this.text,
      this.fontSize = 20.0,
      this.color = Colors.black,
      this.fontWeight = FontWeight.w500});

  String text;
  double fontSize;
  FontWeight fontWeight;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.teko(
          fontSize: fontSize, fontWeight: fontWeight, color: color),
      textAlign: TextAlign.center,
    );
  }
}
