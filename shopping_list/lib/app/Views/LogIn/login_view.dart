import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/shared/custom_buttons.dart';
import '../../utils/shared/custom_text.dart';
import '../../utils/shared/fixed_sheet.dart';
import 'widgets/login_form.dart';

class LogInView extends StatelessWidget {
  const LogInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      body: Stack(
        children: [
          BottomContainer(
            child: Column(
              children: [
                const FormTitle(text: 'Log In'),
                const LogInForm(),
                AuthButton(
                  buttonText: 'Log In',
                  onPressed: () {
                    print('Log In');
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
