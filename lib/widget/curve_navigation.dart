import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:project_2/constant/colors.dart';
import 'package:project_2/screens/cart.dart';
import 'package:project_2/screens/home_list.dart';
import 'package:project_2/screens/profile.dart';
import 'package:project_2/screens/search.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  BottomNavBarState createState() => BottomNavBarState();
}

class BottomNavBarState extends State<BottomNavBar> {
  final List<dynamic> _page = [
    const HomePage(),
    const Search(),
    const CartPage(),
    const ProfilePage(),
  ];
  int _activePage = 0;

  @override
  Widget build(BuildContext context) {
    print("This is the actice page $_activePage");
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          index: _activePage,
          height: 60.0,
          items: const <Widget>[
            Icon(Icons.home, size: 30),
            Icon(
              Icons.search,
              size: 30,
            ),
            Icon(Icons.shopping_cart, size: 30),
            Icon(Icons.perm_identity, size: 30),
          ],
          color: WColors.orange,
          backgroundColor: WColors.darkRed,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _activePage = index;
            });
          },
          letIndexChange: (index) => true,
        ),
        body: Container(
          color: Colors.blueAccent,
          child: Center(
            child: _page[_activePage],
          ),
        ));
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Search();
  }
}

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Cart();
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return const ProfileScreen();
  }
}
