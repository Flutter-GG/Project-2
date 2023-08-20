import 'package:flutter/material.dart';
import 'package:project_2/constant/colors.dart';
import 'package:project_2/screens/sign_up.dart';
import 'package:project_2/constant/extinsions.dart';

class appBarcu extends StatelessWidget {
  appBarcu({super.key, required this.title});
  String? title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: WColors.darkRed,
      elevation: 0,
      title: Text(title!),
      leading: IconButton(
        icon: const Icon(Icons.logout),
        tooltip: 'Log Out',
        onPressed: () {
          context.pushPage(screen: const Sign());
        },
      ),
      
    );
    
  }
   @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
