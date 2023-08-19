import 'package:flutter/material.dart';
import 'package:shopping_list/app/utils/shared/spacing.dart';

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

//------------------------------------------------------------------------------------------------



class AuthButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const AuthButton({
    Key? key,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ResponsiveSpacing.height(context, large),
        ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              Colors.red, // Set button color
            ),
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
                borderRadius: BorderRadius.circular(25.0),
              ),
            ),
            minimumSize: MaterialStateProperty.all<Size>(
              Size(
                MediaQuery.of(context).size.width * 0.7,
                MediaQuery.of(context).size.height * 0.08,
              ),
            ),
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ButtonText(text: buttonText),
          ),
        ),
      ],
    );
  }
}
