import 'package:flutter/material.dart';
import 'package:shopping_list/app/Views/SignUp/signup_view.dart';

import '../../../utils/shared/custom_buttons.dart';
import '../../../utils/shared/spacing.dart';
import '../../LogIn/login_view.dart';

class IntroButtons extends StatelessWidget {
  const IntroButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.of(context).size.width * .8,
      right: MediaQuery.of(context).size.width * 0.02,
      child: Align(
        alignment: Alignment.bottomRight,
        child: Column(
          children: [
            const CustomIntroButton(
              buttonText: 'Sign Up',
              destinationRoute: SignUpView(),
            ),
            ResponsiveSpacing.height(context, small),
            const CustomIntroButton(
              buttonText: 'Login',
              destinationRoute: LogInView(),
            ),
          ],
        ),
      ),
    );
  }
}
