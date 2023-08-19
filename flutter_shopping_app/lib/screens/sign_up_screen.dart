import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/components/custom_app_bar.dart';
import 'package:flutter_shopping_app/data/global_var.dart';
import 'package:flutter_shopping_app/screens/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
      appBar: const CustomAppBar(text: 'Sign Up'),
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
              child: const Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }

  void _submet() {
    final String userName = _userNameController.text;
    final String password = _passwordController.text;

    if (userName.isNotEmpty && password.isNotEmpty) {
      userAuth['userName'] = userName;
      userAuth['password'] = password;
    }
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ),
      (route) => false,
    );
  }
}
