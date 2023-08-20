import 'package:flutter/material.dart';
import 'package:project2/components/text/text_field_widget.dart';

class SingupForm extends StatefulWidget {
  const SingupForm({super.key});

  @override
  State<SingupForm> createState() => _SingupFormState();
}

class _SingupFormState extends State<SingupForm> {
  @override
  Widget build(BuildContext context) {
    return   const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Column(
        children: [
          TextFieldWidget(preIcon: Icon(Icons.person), hint: "Enter Your name", lable: "name"),
          TextFieldWidget(preIcon: Icon(Icons.insert_drive_file), hint: "Enter Your id", lable: "ID"),
          TextFieldWidget(preIcon: Icon(Icons.lock_outline), hint: "Enter password", lable: "password"),
        ],
      ),
    );
  }
}