import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomIntroButton extends StatelessWidget {
  final String buttonText;
  final Widget destinationRoute;

  const CustomIntroButton({
    Key? key,
    required this.buttonText,
    required this.destinationRoute,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => destinationRoute,
          ),
        );
      },
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all<Color>(Colors.red), // Set button color
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              return Colors.redAccent;
            }
            return null;
          },
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(45.0),
          ),
        ),
        minimumSize: MaterialStateProperty.all<Size>(
          const Size(150, 60),
        ),
      ),
      child: ButtonText(
        text: buttonText,
      ),
    );
  }
}
