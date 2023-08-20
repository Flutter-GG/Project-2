import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shopping_list/app/Views/Home/home_view.dart';
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
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
                SignUpForm(
                  nameController: nameController,
                  emailController: emailController,
                  passwordController: passwordController,
                ),
                AuthButton(
                  buttonText: 'Sign Up',
                  onPressed: () {
                    FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                      email: emailController.text,
                      password: passwordController.text,
                    )
                        .then((value) {
                      print("Created New Account!");
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomeView()));
                    }).onError((error, stackTrace) {
                      print('Error: ${error.toString()}');
                    });
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
