import 'package:flutter/material.dart';
import 'package:ghars/utils/extintions.dart';
import '../../constants/colors.dart';
import '../../constants/spaces.dart';
import '../../screens/main_scaffold.dart';

class EntryOptions extends StatelessWidget {
  const EntryOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 60,
          width: MediaQuery.of(context).size.width * 0.85,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: GColors.green,
            ),
            child: const Text(
              "Log in",
              style: TextStyle(
                fontSize: 45,
                fontFamily: 'AmaticSC',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        GSpaces.gV16,
        SizedBox(
          height: 60,
          width: MediaQuery.of(context).size.width * 0.85,

          //This button will do nothing
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: GColors.white,
            ),
            child: const Text(
              "Sign Up",
              style: TextStyle(
                fontSize: 45,
                fontFamily: 'AmaticSC',
                fontWeight: FontWeight.bold,
                color: GColors.black,
              ),
            ),
          ),
        ),
        GSpaces.gV16,
        InkWell(
          onTap: () {
            context.push(screen: MainScaffold());
          },
          child: const Text(
            "Continue as guest",
            style: TextStyle(
              color: GColors.darkGreen,
              fontSize: 17,
            ),
          ),
        ),
      ],
    );
  }
}
