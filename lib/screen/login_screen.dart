import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project2/main.dart';
import 'package:project2/screen/home_screen.dart';
import 'package:project2/utilities/extension/navigator.dart';
import 'package:project2/utilities/ui_classes/spaces.dart';
import 'package:project2/widget/customtext_widget.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
          flex: 3,
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
                    SizedBox(
                        width: MediaQuery.of(context).size.width - 50,
                        child: TextFormField(
                            decoration: const InputDecoration(
                                hintText: "Enter your username",
                                labelText: "Uusername",
                                labelStyle: TextStyle(color: Colors.black),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                  color: Colors.black,
                                )),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                )))),
                    Spaces.spaceH8,
                    SizedBox(
                        width: MediaQuery.of(context).size.width - 50,
                        child: TextFormField(
                            obscureText: true,
                            decoration: const InputDecoration(
                                hintText: "Enter your password",
                                labelText: "Password",
                                labelStyle: TextStyle(color: Colors.black),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                  color: Colors.black,
                                )),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                suffixIcon: Icon(
                                  Icons.visibility_off,
                                  color: Colors.black,
                                )))),
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        context.push(screen: HomeScreen(list: listProducts));
                      },
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: Colors.orange,
                        fixedSize:
                            Size(MediaQuery.of(context).size.width - 50, 50),
                      ),
                      child: CustomTextWidget(
                        text: "Login",
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
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
