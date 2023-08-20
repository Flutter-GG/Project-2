import 'package:flutter/material.dart';
import 'package:shop_app/screen/cart_page.dart';
import 'package:shop_app/screen/home_page.dart';

class ButtomWedgit extends StatelessWidget {
  const ButtomWedgit({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
          children: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ));
            },
            icon: const Icon(Icons.home),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CartPage(),
                  ));
            },
            icon: const Icon(Icons.shopping_cart,
            color: Colors.black,),
          ),
        ]));
  }
}
