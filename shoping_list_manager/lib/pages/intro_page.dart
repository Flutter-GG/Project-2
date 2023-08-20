import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:shoping_list_manager/pages/auth-page.dart';
import 'package:shoping_list_manager/pages/log_in_page.dart';


class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(80.0),
          child: Image.asset('assets/images/intro_icon.png'),
        ),
        Padding(
          padding: EdgeInsets.all(24.0),
          child: Text(
            " Manage your shopping list",
            textAlign: TextAlign.center,
            style: GoogleFonts.notoSerif(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 24),
        Text(
          "A quick and easy way to keep an eye \n at your shopping process",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () => Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return AuthPage();
          })),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.all(24),
            child: Text(
              "Get Started",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const Spacer(),
      ]),
    );
  }
}
