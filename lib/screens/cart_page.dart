import 'package:flutter/material.dart';
import '../main.dart';
import '../model/plants_model.dart';
import '../widgets/card_widgets/cart_card.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key, this.plants});

  final Plants? plants;

  @override
  State<CartPage> createState() => CartPageState();
}

class CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
        itemCount: cartItemList.length,
        itemBuilder: ((context, index) {
          //Return the Fliped card
          return CartItemCard(
            plants: cartItemList[index],
          );
        }),
      ),
    );
  }
}
