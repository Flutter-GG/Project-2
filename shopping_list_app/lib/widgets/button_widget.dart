import 'package:flutter/material.dart';
import 'package:shopping_list_app/utils/colors_app.dart';

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({
    super.key, required this.text, this.onPressed,
  });


 final String text;
 final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(ColorsApp.primeryColor),
        padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(horizontal: 10, vertical: 20)),
      ),
      child:  Center(
        child: Text(
          text,
          style: const TextStyle(
            color: ColorsApp.whiteColor,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}
