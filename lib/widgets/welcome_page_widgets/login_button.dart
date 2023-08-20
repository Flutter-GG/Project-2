import 'package:flutter/material.dart';
import 'package:ghars/constants/colors.dart';
import 'package:ghars/data_to_be_accessed.dart';
import 'package:ghars/screens/main_scaffold.dart';
import 'package:ghars/utils/extintions.dart';
import 'package:ghars/widgets/welcome_page_widgets/login_sheet.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({
    super.key,
  });

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 200,
      child: ElevatedButton(
        onPressed: () {
          if (userExist(userEmail.text, userPassword.text)) {
            for (int i = 0; i < registerdUsers.length; i++) {
              if (registerdUsers[i].name == userNmae) {
                cartItemList = registerdUsers[i].shoppingList!;
              }
            }
            //Clearing fields
            clearFileds();
            context.push(screen: const MainScaffold());
            setState(() {});
            context.findAncestorStateOfType()!.setState(() {});
          } else {
            msg = "Email or Password is wrong";
            setState(() {});
            context.findAncestorStateOfType()!.setState(() {});
            // Navigator.pop(context);
          }
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          backgroundColor: GColors.white,
        ),
        child: const Text(
          "Log in ",
          style: TextStyle(
            color: GColors.black,
            fontSize: 40,
            fontFamily: 'AmaticSC',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
