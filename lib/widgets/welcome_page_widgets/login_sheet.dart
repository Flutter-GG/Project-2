import 'package:flutter/material.dart';
import 'package:ghars/widgets/welcome_page_widgets/login_button.dart';
import '../../constants/colors.dart';
import '../../constants/spaces.dart';

TextEditingController userEmail = TextEditingController();
TextEditingController userPassword = TextEditingController();
String msg = ""; // To Show an error msg if user not registerd

class LoginSheet extends StatefulWidget {
  const LoginSheet({
    super.key,
  });

  @override
  State<LoginSheet> createState() => LoginSheetState();
}

class LoginSheetState extends State<LoginSheet> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: MediaQuery.of(context).size.width * 0.85,
      child: ElevatedButton(
        onPressed: () {
          showBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 217, 222, 213),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      )),
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: Column(
                    children: [
                      TextField(
                        controller: userEmail,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: GColors.white,
                          label: Text("Email Address"),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          hintText: "Enter your email",
                        ),
                      ),
                      GSpaces.gV16,
                      TextField(
                        controller: userPassword,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: GColors.white,
                          label: Text("Password"),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          hintText: "Enter your password",
                        ),
                      ),
                      GSpaces.gV16,
                      Text(
                        msg,
                        style: const TextStyle(
                          color: Colors.red,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      GSpaces.gV16,
                      const LoginButton(),
                    ],
                  ),
                );
              });
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: GColors.green,
        ),
        child: const Text(
          "Log in",
          style: TextStyle(
            fontSize: 45,
            fontFamily: 'AmaticSC',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
