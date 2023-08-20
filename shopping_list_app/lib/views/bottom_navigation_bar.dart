import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:shopping_list_app/views/explorer_view.dart';

import 'cart_view.dart';

class SHBottomNavigationBar extends StatefulWidget {
  const SHBottomNavigationBar({super.key});

  @override
  State<SHBottomNavigationBar> createState() => _SHBottomNavigationBarState();
}

class _SHBottomNavigationBarState extends State<SHBottomNavigationBar> {
  final List screens = [const ExplorerView(), const CartView()];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Color(0xff63c5b9),
          items: const <Widget>[
            Icon(Icons.home, size: 30),
            Icon(Icons.shopping_cart, size: 30),
          ],
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          }),
      body: screens.elementAt(selectedIndex),
    );
  }
}
