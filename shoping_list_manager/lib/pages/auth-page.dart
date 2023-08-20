import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shoping_list_manager/pages/intro_page.dart';
import 'package:shoping_list_manager/pages/log_in_page.dart';
import 'package:shoping_list_manager/pages/home_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return LogIn();
            } else {
              return IntroPage();
            }
          }),
    );
  }
}
