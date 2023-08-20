import 'package:flutter/material.dart';

extension Navigation on Widget {
  push(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return this;
          },
        ),
      );
  pop(BuildContext context) => Navigator.pop(context);
}
