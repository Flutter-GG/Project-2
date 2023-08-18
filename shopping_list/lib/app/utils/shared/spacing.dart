import 'package:flutter/material.dart';

class ResponsiveSpacing {
  static SizedBox height(BuildContext context, double factor) {
    final screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(height: screenWidth * factor);
  }

  static SizedBox width(BuildContext context, double factor) {
    final screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(width: screenWidth * factor);
  }
}


const small = 0.05;
const large = 0.1;
const medium = 0.07;
const xlarge = 0.15;
const xxlarge = 0.2;
const xxxlarge = 0.25;
const xxxxlarge = 0.3;
const xxxxxlarge = 0.35;



