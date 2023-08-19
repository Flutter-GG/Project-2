import 'package:flutter/material.dart';
import 'package:shopping_list/app/Views/SignUp/widgets/signup_form.dart';
import '../../utils/constants/colors.dart';
import '../../utils/shared/custom_buttons.dart';
import '../../utils/shared/custom_text.dart';
import '../../utils/shared/fixed_sheet.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      body: Stack(
        children: [
          BottomContainer(
            child: Column(
              children: [
                const FormTitle(text: 'Sign Up'),
                const SignUpForm(),
                AuthButton(
                  buttonText: 'Sign Up',
                  onPressed: () {
                    print('Sign Up');
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
