import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:shopping_list_app/pages/cart_page.dart';
import 'package:shopping_list_app/pages/profile_page.dart';
import 'package:shopping_list_app/utils/colors_app.dart';
import 'package:shopping_list_app/widgets/home_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  List pages = [
    const HomeWidget(),
    const CartPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
        items: const [
          TabItem(icon: Icon(Icons.home), title: 'Home'),
          TabItem(icon: Icon(Icons.shopping_bag), title: 'Shopping Cart'),
          TabItem(icon: Icon(Icons.person_2), title: 'Profile'),
        ],
        initialActiveIndex: index,
        onTap: _changeItem,
        backgroundColor: ColorsApp.primeryColor,
      ),
      body: pages.elementAt(index),
    );
  }

  _changeItem(int value) {
    setState(() {
      index = value;
    });
  }
}
