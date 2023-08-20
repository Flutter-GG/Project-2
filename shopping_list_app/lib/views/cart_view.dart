import 'package:flutter/material.dart';
import 'package:shopping_list_app/cards/cart_product_card.dart';
import 'package:shopping_list_app/main.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => CartViewState();
}

class CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return CartProductCard(
              product: cart.keys.elementAt(index),
              quantity: cart[cart.keys.elementAt(index)]!,
            );
          },
          itemCount: cart.values.length,
        ),
      ),
    );
  }
}
