import 'package:flutter/material.dart';
import 'package:ghars/data_to_be_accessed.dart';
import 'package:ghars/widgets/user_page_widgets/guest_widget.dart';

import '../widgets/user_page_widgets/user_account_widget.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      //If user enter the system by Log in choice
      // child: UserAccount(),

      child: isUserAccount!
          ? const UserAccount()
          : const Center(child: GusetWidget()),
    );
  }
}
