import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/components/custom_app_bar.dart';
import 'package:flutter_shopping_app/components/custom_products.dart';
import 'package:flutter_shopping_app/data/global_var.dart';

/* this is for user cart */
class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(text: 'Cart'),
      body: CustomProductsInformation(
        products: cart,
      ),
    );
  }
}
