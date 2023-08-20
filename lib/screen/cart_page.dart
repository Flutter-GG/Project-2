import 'package:flutter/material.dart';
import 'package:shop_app/componts/card_cart.dart';
import 'package:shop_app/models/proudct_model.dart';

List<Product>? cartList = [];


class CartPage extends StatefulWidget {
  const CartPage({
    super.key,
  });

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(itemBuilder: (context, int index) {
          return InkWell(
            onLongPress: () {
              cartList!.removeAt(index);
              setState(() {});
            },
            child: CardCart(product:cartList![index]),
          );
        }));
  }
}
