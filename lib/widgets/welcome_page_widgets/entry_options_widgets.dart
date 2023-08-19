import 'package:flutter/material.dart';
import 'package:ghars/constants/colors.dart';
import 'package:ghars/constants/spaces.dart';
import 'package:ghars/screens/main_scaffold.dart';
import 'package:ghars/utils/extintions.dart';
import 'package:ghars/widgets/welcome_page_widgets/login_sheet.dart';

class EntryOptions extends StatelessWidget {
  const EntryOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LoginSheet(),
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
            context.push(screen: const MainScaffold());
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
