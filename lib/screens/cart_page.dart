import 'package:flutter/material.dart';
import 'package:ghars/constants/colors.dart';
import 'package:ghars/data_to_be_accessed.dart';
import 'package:ghars/widgets/dialog.dart';
import '../functions/quantity_func.dart';
import '../model/plants_model.dart';
import '../model/user_model.dart';
import '../widgets/card_widgets/cart_card.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key, this.plants, this.user});

  final Plants? plants;
  final User? user;

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
                overallTotalPrice() > 1000
                    ? const ShowDialog()
                    : const SizedBox(),
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            overallTotalPrice() > 1000
                                ? "${overallTotalPrice() - 560} SR"
                                : "${overallTotalPrice()} SR",
                            style: TextStyle(
                                fontSize: 27,
                                fontWeight: FontWeight.bold,
                                color: overallTotalPrice() > 1000
                                    ? Colors.red
                                    : Colors.black),
                          ),
                          overallTotalPrice() > 1000
                              ? Text(
                                  "${overallTotalPrice()} SR",
                                  style: const TextStyle(
                                    fontSize: 15,
                                  ),
                                )
                              : const SizedBox(),
                        ],
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
