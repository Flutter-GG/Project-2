import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project2/model/products.dart';
import 'package:project2/screen/cart_screen.dart';
import 'package:project2/utilities/extension/navigator.dart';
import 'package:project2/utilities/ui_classes/spaces.dart';
import 'package:project2/widget/customtext_widget.dart';
import 'package:flutter_add_to_cart_button/flutter_add_to_cart_button.dart';

import '../main.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key, required this.products});
  final Products products;
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  AddToCartButtonStateId stateId = AddToCartButtonStateId.idle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.orange,
          foregroundColor: Colors.black,
          elevation: 0,
          // title: CustomTextWidget(
          //   text: widget.products.productName.toString(),
          //   fontWeight: FontWeight.w400,
          //   fontSize: 30,
          // ),
          actions: [
            IconButton(
                onPressed: () {
                  context.push(screen: const CartScreen());
                },
                icon: const Icon(
                  size: 25,
                  FontAwesomeIcons.cartShopping,
                  color: Colors.black,
                ))
          ],
        ),
        body: Column(
          children: [
            Container(
              height: 300,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50)),
                  color: Colors.orange),
              child: Stack(children: [
                Positioned(
                  top: 40,
                  left: 0,
                  child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width - 50,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(100),
                        bottomRight: Radius.circular(100),
                      ),
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.network(
                          widget.products.productImage!,
                          height: 60,
                          width: 60,
                          fit: BoxFit.fill,
                        )),
                  ),
                ),
              ]),
            ),
            Spaces.spaceH8,
            Row(
              children: [
                Spaces.spaceW8,
                CustomTextWidget(
                  text: "Fresh & Hygienic",
                  fontWeight: FontWeight.w100,
                  fontSize: 40,
                  color: Colors.grey,
                ),
                const Spacer(),
                CustomTextWidget(
                  text: "${widget.products.prica.toString()} \$",
                  fontSize: 30,
                  color: Colors.orange,
                ),
                Spaces.spaceW8
              ],
            ),
            // Spaces.spaceH8,
            Row(
              children: [
                Spaces.spaceW8,
                Flexible(
                  child: CustomTextWidget(
                    text: widget.products.productName!,
                    fontSize: 50,
                  ),
                ),
                Spaces.spaceW8,
              ],
            ),
            Row(
              children: [
                Spaces.spaceW8,
                Flexible(
                  child: CustomTextWidget(
                    text: widget.products.productDescribe!,
                    fontWeight: FontWeight.w300,
                    fontSize: 25,
                  ),
                ),
                Spaces.spaceW8,
              ],
            ),
            Spaces.spaceH32,
            Spaces.spaceH32,

            SizedBox(
              width: MediaQuery.of(context).size.width - 50,
              child: AddToCartButton(
                trolley: Image.asset(
                  'assets/images/ic_cart.png',
                  width: 30,
                  height: 30,
                  color: Colors.white,
                ),
                text: Text(
                  'Add to cart',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.teko(
                    fontSize: 25,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.fade,
                ),
                check: const SizedBox(
                  width: 48,
                  height: 48,
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
                // borderRadius: BorderRadius.circular(0),
                backgroundColor: Colors.orange,
                onPressed: (id) {
                  if (id == AddToCartButtonStateId.idle) {
                    //handle logic when pressed on idle state button.
                    cartListProducts.add(widget.products);
                    setState(() {
                      stateId = AddToCartButtonStateId.loading;
                      Future.delayed(const Duration(seconds: 3), () {
                        setState(() {
                          stateId = AddToCartButtonStateId.done;
                        });
                      });
                    });
                  } else if (id == AddToCartButtonStateId.done) {
                    //handle logic when pressed on done state button.
                    setState(() {
                      stateId = AddToCartButtonStateId.idle;
                    });
                  }
                },
                stateId: stateId,
              ),
            ),
          ],
        ));
  }
}
