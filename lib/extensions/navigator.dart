import 'package:flutter/material.dart';

extension Screen on BuildContext {
  getNavigator(Widget target) {
    Navigator.push(this, MaterialPageRoute(builder: (context) => target));
  }

  pop(Widget target) {
    Navigator.pop(this);
  }
}
