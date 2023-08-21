import 'package:flutter/material.dart';
import 'package:project2/components/general/cart_card.dart';
import 'package:project2/components/general/shopping_summary.dart';
import 'package:project2/components/text/text_widget.dart';
import 'package:project2/constants/app_styles.dart';
import 'package:project2/constants/constants.dart';
import 'package:project2/data/global_data.dart';
import 'package:project2/utility/decrease_quantity.dart';
import 'package:project2/utility/increase_quantity.dart';
import 'package:swipe_to/swipe_to.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key, required this.afterAddToCart});
  final Function() afterAddToCart;

  @override
  State<CartScreen> createState() => CartScreenState();
}

class CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: primaryColor,
          title:  const Padding(
            padding: EdgeInsets.all(60.0),
            child: TextWidget(
              text: "shopping cart",
              color: whiteColor,
            ),
          ),
        ),
        body: allCartProducts > 0
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: AppLayout.getSize(context).width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      height16,
                      allCartProducts > 0
                          ? const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TextWidget(
                                  text: "product",
                                  size: 18,
                                ),
                                TextWidget(
                                  text: "quantity",
                                  size: 18,
                                ),
                                TextWidget(
                                  text: "subtotal",
                                  size: 18,
                                ),
                              ],
                            )
                          : Container(),
                      height16,
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: listCart.length,
                          itemBuilder: (context, index) {
                            return SwipeTo(
                                onLeftSwipe: () {
                                  increaseQuantity(listCart[index]);
                                  widget.afterAddToCart.call();
                                  context
                                      .findAncestorStateOfType<
                                          CartScreenState>()!
                                      .setState(() {});
                                  setState(() {});
                                },
                                onRightSwipe: () {
                                  widget.afterAddToCart.call();
                                  decreaseQuantity(listCart[index]);
                                  context
                                      .findAncestorStateOfType<
                                          CartScreenState>()!
                                      .setState(() {});
                                  setState(() {});
                                },
                                child: CartCard(
                                  product: listCart[index],
                                  afterAddToCart: widget.afterAddToCart,
                                ));
                          }),
                      ShoppingSummary(
                        num: allCartProducts,
                      ), // ! i add this parameter to refresh page automatically , if it is const it will NOT refresh automatically :)
                    ],
                  ),
                ),
              )
            : const Center(
                child: TextWidget(text: "There is No any itme in the cart")));
  }
}
