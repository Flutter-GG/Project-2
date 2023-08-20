import 'package:flutter/material.dart';
import 'package:project_2/Widgets/wapp_item_card.dart';
import 'package:project_2/main.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Your Cart ",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(
        itemCount: CartList.length,
        itemBuilder: (context, index) {
          return InkWell(
            child: WappItemCard(
              sellDataModel: CartList[index],
            ),
            onLongPress: () {
              setState(() {
                CartList.removeAt(index);
              });
            },
          );
        },
      ),
    );
  }
}
