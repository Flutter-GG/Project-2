import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../Screens/cart_screen.dart';
import '../Screens/home_screen.dart';
import '../Screens/profile_screen.dart';
import '../Screens/search.dart';

class WappNavigation extends StatefulWidget {
  const WappNavigation({super.key});

  @override
  State<WappNavigation> createState() => _WappNavigationState();
}

class _WappNavigationState extends State<WappNavigation> {
  final List Screen = [
    HomeScreen(),
    CartScreen(),
    SearchScreen(),
    ProfileScreen(),
  ];
  int selcted = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen.elementAt(selcted),
      bottomNavigationBar: GNav(
        backgroundColor: Colors.blue.shade300,
        color: Colors.black,
        activeColor: Colors.white,
        tabBackgroundColor: Colors.blue.shade400,
        onTabChange: (index) {
          selcted = index;
          setState(() {});
        },
        tabs: [
          GButton(
            icon: Icons.home,
            text: "Home",
          ),
          GButton(
            icon: Icons.sell,
            text: "Pay",
          ),
          GButton(
            icon: Icons.search,
            text: "search",
          ),
          GButton(
            icon: Icons.person,
            text: "Profile",
          ),
        ],
      ),
    );
  }
}
