import 'package:flutter/material.dart';

extension Screen on BuildContext {
  push({required Widget screen}) {
    Navigator.push(this, MaterialPageRoute(builder: ((context) => screen)));
  }
}
