import 'package:flutter/material.dart';
import 'package:shopping_list_app/utils/colors_app.dart';
import 'package:shopping_list_app/widgets/text_widget.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  AppBarWidget(
      {super.key,
      this.icon,
      this.colorIconTheme = ColorsApp.whiteColor,
      this.onPressed,
      this.backgroundColor = ColorsApp.whiteColor,
      this.text = ''});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  final String text;
  final IconData? icon;
  final Color? colorIconTheme;
  final Function()? onPressed;
  final Color? backgroundColor;

  Widget build(BuildContext context) {
    return AppBar(
      title: TextWidget(
          text: text, textColor: ColorsApp.whiteColor, isFontWeight: true),
      elevation: 0,
      iconTheme: IconThemeData(color: colorIconTheme),
      actions: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            color: ColorsApp.blackColor,
          ),
        ),
      ],
      backgroundColor: backgroundColor,
    );
  }
}
