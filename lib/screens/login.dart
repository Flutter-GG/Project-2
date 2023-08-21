import 'package:flutter/material.dart';
import 'package:project_2/constant/colors.dart';
import 'package:project_2/constant/extinsions.dart';
import 'package:project_2/screens/sign_up.dart';
import 'package:project_2/constant/spaces.dart';
import 'package:project_2/widget/curve_navigation.dart';

class Log extends StatefulWidget {
  const Log({super.key});

  @override
  State<Log> createState() => _Log();
}

class _Log extends State<Log> {
  bool passwordVisible = false;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WColors.backG,
      body: SafeArea(
          bottom: false,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                labelText: 'Email',
                                fillColor: Colors.black,
                              ),
                            ),
                            Space.spaceH24,
                            TextField(
                              obscureText: passwordVisible,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                labelText: "Password",
                                fillColor: Colors.black,
                                suffixIcon: IconButton(
                                  icon: Icon(passwordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                  onPressed: () {
                                    setState(
                                      () {
                                        passwordVisible = !passwordVisible;
                                      },
                                    );
                                  },
                                ),
                                alignLabelWithHint: false,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Space.spaceH32,
                      ElevatedButton(
                        onPressed: () {
                          context.pushPage(screen: BottomNavBar());
                        },
                        style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          backgroundColor: WColors.darkRed,
                          fixedSize:
                              Size(MediaQuery.of(context).size.width - 50, 50),
                        ),
                        child: const Text("Log in"),
                      ),
                      TextButton(
                          onPressed: () {
                            context.pushPage(screen: Sign());
                          },
                          child: const Text("Do not have an account?"))
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
