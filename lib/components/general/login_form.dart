import 'package:flutter/material.dart';
import 'package:project2/components/text/text_field_widget.dart';


  final IdController = TextEditingController();
  final passwordController = TextEditingController();
  
class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
           TextFieldWidget(preIcon:  const Icon(Icons.insert_drive_file), hint: "Enter your ID", lable: "User ID",controller: IdController,),
           TextFieldWidget(preIcon: const Icon(Icons.lock_outline),hint: "Enter password",lable: "Password",controller: passwordController, ),
        ],
      ),
    );
  }
}
