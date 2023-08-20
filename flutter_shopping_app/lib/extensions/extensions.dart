import 'package:flutter/material.dart';

/* MediaQuery.of(this).size it is requierd to me */
extension ScreenSizes on BuildContext {
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
}
