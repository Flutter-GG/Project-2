import 'package:flutter/material.dart';
import 'package:ghars/widgets/user_page_widgets/guest_widget.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      //If user enter the system by Log in choice
      // child: UserAccount(),

      child: Center(
        child: GusetWidget(),
      ),
    );
  }
}
