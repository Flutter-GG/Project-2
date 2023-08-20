import 'package:flutter/material.dart';
import 'package:project2/screen/login_screen.dart';
import 'package:project2/utilities/extension/navigator.dart';
import 'package:project2/widget/customtext_widget.dart';

class InitScreen extends StatefulWidget {
  @override
  _InitScreenState createState() => _InitScreenState();
}

class _InitScreenState extends State<InitScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          flex: 3,
          child: Image.asset(
            "assets/images/background.jpg",
            width: 500,
            fit: BoxFit.cover,
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: CustomTextWidget(
                        text: "Order Now,Your Favorites Fruits.",
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          context.push(screen: LoginScreen());
                        },
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          backgroundColor: Colors.orange,
                          fixedSize:
                              Size(MediaQuery.of(context).size.width - 50, 50),
                        ),
                        child: CustomTextWidget(
                          text: "Get Started!",
                          fontSize: 25,
                          color: Colors.white,
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
