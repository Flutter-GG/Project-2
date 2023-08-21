// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project2/components/buttons/button.dart';
import 'package:project2/components/text/text_widget.dart';
import 'package:project2/constants/app_styles.dart';
import 'package:project2/constants/constants.dart';
import 'package:project2/extensions/navigator.dart';
import 'package:project2/screens/login_screen.dart';


class InitScreen extends StatelessWidget {
  const InitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Image.network( 
                    "https://img.freepik.com/free-photo/dark-glass-bottle-with-single-liquid-drop-generative-ai_188544-9634.jpg?t=st=1692554627~exp=1692558227~hmac=fb3ba92753c6778583315287cc99163b65715ffc6c1f428e4f25e08716262e2a&w=360",
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    padding: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
                    margin: EdgeInsets.only(top: 570),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Column(
                          children:  [
                            TextWidget(
                                text: "let's shopping",
                                color:darkPrimaryColor,
                                size: 30,
                                isBold: true),
                            SizedBox(
                              height: 15,
                              width: AppLayout.getSize(context).width,
                            ),
                            TextWidget(
                              text:
                                  "Welcome to your world of perfumes",
                              color: greyColor,
                              size: 20,
                              isBold: true,
                            ),
                          ],
                        ),
                        Button(text: "Get Started", backgroundColor: primaryColor,onPress: (){
                          context.getNavigator(LoginScreen());
                        },color: whiteColor,)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
