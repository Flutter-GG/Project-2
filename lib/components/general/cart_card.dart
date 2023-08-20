import 'package:flutter/material.dart';
import 'package:project2/components/general/delete_product.dart';
import 'package:project2/components/text/text_widget.dart';
import 'package:project2/constants/app_styles.dart';
import 'package:project2/constants/constants.dart';
import 'package:project2/models/Product_model.dart';

class CartCard extends StatefulWidget {
  const CartCard({super.key, required this.product, required this.afterAddToCart});
  final Product product;
  final Function() afterAddToCart;
  @override
  State<CartCard> createState() => CartCardState();
}

class CartCardState extends State<CartCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: const EdgeInsets.all(0),
      child: Card(
          elevation: 1,
          child: Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Image.network(widget.product.image!, height: 80, width: 80),
                    width8,
                    Expanded(
                        child: TextWidget(
                      text: widget.product.name!,
                      size: 18,
                      overflow: TextOverflow.clip,
                    )),
                  ],
                ),
              ),
              width24,
              TextWidget(
                text: widget.product.quantity.toString(),
                size: 20,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextWidget(
                      text:
                          "${(widget.product.price! * widget.product.quantity!).toStringAsFixed(2)} S.R",
                      size: 16,
                      color: darkPrimaryColor,
                    ),
                    height4,
                    TextWidget(
                      text:
                          "${(widget.product.price! * widget.product.quantity! * 2).toStringAsFixed(2)} S.R",
                      size: 16,
                      color: greyColor,
                      lineThrough: true,
                    ),
                  ],
                ),
              ),
              DeleteProduct(product: widget.product,afterAddToCart: widget.afterAddToCart,),
            ],
          )),
    );
  }
}
