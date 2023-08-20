import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../utils/constants/colors.dart';
import '../../utils/shared/custom_buttons.dart';
import '../../utils/shared/custom_text.dart';
import '../../utils/shared/fixed_sheet.dart';
import '../Home/home_view.dart';
import 'widgets/login_form.dart';

class LogInView extends StatefulWidget {
  const LogInView({Key? key}) : super(key: key);

  @override
  _LogInViewState createState() => _LogInViewState();
}

class _LogInViewState extends State<LogInView> {
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
                const FormTitle(text: 'Log In'),
                LogInForm(
                  emailController: emailController,
                  passwordController: passwordController,
                ),
                AuthButton(
                  buttonText: 'Log In',
                  onPressed: () {
                    FirebaseAuth.instance
                        .signInWithEmailAndPassword(
                      email: emailController.text,
                      password: passwordController.text,
                    )
                        .then((value) {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => HomeView()),
                        (route) => false,
                      );
                    }).catchError((error) {
                      // Handle login error
                      print("Error: ${error.toString()}");
                    });
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
