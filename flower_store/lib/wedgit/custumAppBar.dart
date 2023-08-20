import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flower_store/page/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import '../model/cart_model.dart';

AppBar custumAppBar(BuildContext context, CartModel cart) {
  TextEditingController textController = TextEditingController();
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: const Padding(
      padding: EdgeInsets.only(left: 24.0),
    ),
    centerTitle: false,
    actions: [
      // search bar library
      Container(
        child: AnimSearchBar(
          width: 200,
          textController: textController,
          onSuffixTap: () {
            textController.clear();
          },
          onSubmitted: (String) {},
        ),
      ),
      // using Badge libary
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: badges.Badge(
          badgeContent: Text(cart.count.toString()),
          child: IconButton(
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.grey,
            ),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const CartPage();
                },
              ),
            ),
          ),
        ),
      ),
      IconButton(
        icon: Icon(Icons.person),
        color: Colors.grey,
        onPressed: () {
          const SizedBox(
            height: 16,
          );
        },
      ),
    ],
  );
}
