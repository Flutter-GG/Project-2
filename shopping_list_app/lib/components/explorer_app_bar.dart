import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:shopping_list_app/main.dart';

class ExplorerAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ExplorerAppBar({
    super.key,
    required this.appBar,
  });

  final AppBar appBar;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 75,
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0,
      leading: badges.Badge(
        badgeContent: Text("${cart.values.length}"),
        position: badges.BadgePosition.topEnd(top: 10, end: 10),
        child: IconButton(
          icon: Icon(Icons.shopping_basket),
          onPressed: () {},
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
