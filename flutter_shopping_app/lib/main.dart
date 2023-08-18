import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/components/custom_bottom_nav_bar.dart';
import 'package:flutter_shopping_app/screens/items_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: ItemsScreen(),
        bottomNavigationBar: CustomBottomNavBar(),
      ),
    );
  }
}
