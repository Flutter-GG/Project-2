import 'package:flutter/material.dart';
import 'package:shopping_list_app/utils/colors_app.dart';
import 'package:shopping_list_app/widgets/text_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/img.png'),
          const Center(
            child: TextWidget(
              text: "Oops!!!",
              textColor: ColorsApp.redColor,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }
}
