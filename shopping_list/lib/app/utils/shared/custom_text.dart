import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_list/app/utils/constants/colors.dart';

class LargeTitle extends StatelessWidget {
  final String text;

  const LargeTitle({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double fontSize = MediaQuery.of(context).size.width * 0.13;

    return Text(
      text,
      style: GoogleFonts.josefinSans(
        textStyle: TextStyle(
          color: backgroundColor,
          letterSpacing: .5,
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class SubTitle extends StatelessWidget {
  final String text;

  const SubTitle({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double fontSize = MediaQuery.of(context).size.width * 0.03;
    return Text(
      text,
      style: GoogleFonts.pacifico(
        textStyle: TextStyle(
          color: backgroundColor,
          letterSpacing: .5,
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class ButtonText extends StatelessWidget {
  final String text;

  const ButtonText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double fontSize = MediaQuery.of(context).size.width * 0.05;

    return Text(
      text,
      style: GoogleFonts.pacifico(
        textStyle: TextStyle(
          color: backgroundColor,
          letterSpacing: .5,
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
