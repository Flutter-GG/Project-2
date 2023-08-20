import 'package:flutter/material.dart';
import 'package:shopping_list_app/utils/colors_app.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.textHint,
    this.iconTextFiel,
    this.suffixIcon,
  });
  final String textHint;
  final IconData? iconTextFiel;
  final IconData? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: textHint,
          hintStyle: const TextStyle(fontSize: 15.5),
          prefixIcon: Icon(iconTextFiel, color: ColorsApp.primeryColor),
          suffixIcon: Icon(suffixIcon, color: ColorsApp.primeryColor),
        ));
  }
}
