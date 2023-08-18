import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ghars/screens/user_screen.dart';
import '../constants/colors.dart';
import 'cart_page.dart';
import 'home_page.dart';

class MainScaffold extends StatefulWidget {
  const MainScaffold({
    super.key,
  });

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  int index = 1;
  final pages = [
    const CartPage(),
    HomePage(),
    const UserPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: GColors.white,
      body: SafeArea(child: pages[index]),
      bottomNavigationBar: CurvedNavigationBar(
        index: index,
        backgroundColor: GColors.white,
        color: GColors.green,
        items: const <Widget>[
          Icon(Icons.trolley, size: 30),
          Icon(Icons.home_rounded, size: 30),
          Icon(Icons.person, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
          print(index);
          setState(() {
            this.index = index;
          });
        },
      ),
    );
  }
}
