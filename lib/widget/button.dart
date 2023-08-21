import 'package:flutter/material.dart';
import 'package:project_2/constant/colors.dart';
import 'package:project_2/constant/spaces.dart';
import 'package:project_2/screens/login.dart';
import 'package:project_2/screens/sign_up.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Sign()),
            );
          },
          style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            backgroundColor: WColors.darkRed,
            foregroundColor: WColors.snow,
            fixedSize: Size(MediaQuery.of(context).size.width - 50, 50),
          ),
          child: const Text("SignUp"),
        ),
        Space.spaceH24,
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Log()),
            );
          },
          style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            backgroundColor: WColors.snow,
            foregroundColor: WColors.darkRed,
            fixedSize: Size(MediaQuery.of(context).size.width - 50, 50),
          ),
          child: const Text("Log in"),
        ),
      ],
    );
  }
}
