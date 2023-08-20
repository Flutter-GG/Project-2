import 'package:flutter/material.dart';

extension Navigation on BuildContext {


  navigateTo(Widget page) {
    Navigator.push(
      this,
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }
}
