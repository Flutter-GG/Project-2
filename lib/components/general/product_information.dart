import 'package:flutter/material.dart';
import 'package:project2/components/general/add_to_cart_widget.dart';
import 'package:project2/components/general/rating_bar_widget.dart';
import 'package:project2/components/general/tabby.dart';
import 'package:project2/components/text/text_widget.dart';
import 'package:project2/constants/app_styles.dart';
import 'package:project2/constants/constants.dart';
import 'package:project2/models/Product_model.dart';

class ProductInformation extends StatefulWidget {
  const ProductInformation({super.key, required this.product, required this.afterAddToCart});
  final Product product;
    final Function() afterAddToCart;

  @override
  State<ProductInformation> createState() => _ProductInformationState();
}

class _ProductInformationState extends State<ProductInformation> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(
          text: widget.product.name!,
          size: 24,
        ),
        height8,
        RatingBarWidget(product: widget.product),
        height8,
        Row(
          children: [
            TextWidget(
                text: "${widget.product.price.toString()} S.R",
                color: darkPrimaryColor),
            width16,
            TextWidget(
              text: "${(widget.product.price! * 2).toString()} S.R",
              color: greyColor,
              lineThrough: true,
            ),
          ],
        ),
        height8,
        TextWidget(
          text: widget.product.quantity! > 0
              ? "Remains ${widget.product.quantity} item/s"
              : "Sold out",
          color: greyColor,
          size: 20,
        ),
        Tabby(product: widget.product),
        AddtoCartWidget(product: widget.product, afterAddToCart: widget.afterAddToCart),
      ],
    );
  }
}
