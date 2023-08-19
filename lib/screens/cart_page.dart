import 'package:flutter/material.dart';
import 'package:ghars/constants/colors.dart';
import '../functions/quantity_func.dart';
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
      child: cartItemList.isNotEmpty
          ? Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: cartItemList.length,
                    itemBuilder: ((context, index) {
                      return CartItemCard(
                        plants: cartItemList[index],
                      );
                    }),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 90,
                  decoration: const BoxDecoration(
                    color: GColors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(157, 209, 206, 206),
                        spreadRadius: 2,
                        blurRadius: 7,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Total ",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "${overallTotalPrice()} SR",
                        style: const TextStyle(
                            fontSize: 27, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            )
          : Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Cart is empty",
                style: TextStyle(
                  fontSize: 30,
                  color: GColors.grey,
                ),
              ),
            ),
    );
  }
}
