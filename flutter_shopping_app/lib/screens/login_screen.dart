import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/components/custom_app_bar.dart';
import 'package:flutter_shopping_app/components/custom_text.dart';
import 'package:flutter_shopping_app/data/global_var.dart';
import 'package:flutter_shopping_app/screens/init_screen.dart';
import 'package:flutter_shopping_app/screens/sign_up_screen.dart';

/* this is for authontication for old and new users if they have account or not */
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _userNameController;
  late TextEditingController _passwordController;
  @override
  void initState() {
    super.initState();
    _userNameController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(text: 'Login'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _userNameController,
              decoration: const InputDecoration(hintText: 'User Name'),
            ),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(hintText: 'Password'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _submet();
              },
              child: const Text('Login'),
            ),
            TextButton(
                onPressed: () {
                  _toSignUp();
                },
                child: const CustomText(text: "Don't have account?"))
          ],
        ),
      ),
    );
  }

  void _submet() {
    final String userName = _userNameController.text;
    final String password = _passwordController.text;

    bool isAuthenticated = false;

    for (var userMap in userAuth) {
      if (userMap['userName'] == userName && userMap['password'] == password) {
        isAuthenticated = true;
        break;
      }
    }

    if (isAuthenticated) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const InitScreen(),
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Wrong User name or Password'),
            content: const Text('User name or Password is wrong'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  void _toSignUp() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => const SignUpScreen(),
      ),
      (route) => false,
    );
  }
}
