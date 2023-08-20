import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/components/custom_bottom_nav_bar.dart';
import 'package:flutter_shopping_app/screens/products_screen.dart';

/* this is where the bottomNavigationBar is */
class InitScreen extends StatelessWidget {
  const InitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        bottomNavigationBar: CustomBottomNavBar(),
        body: ProductsScreen(),
      ),
    );
  }
}
