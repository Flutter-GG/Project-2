import 'package:flutter/material.dart';
import 'package:project2/components/general/rating_bar_widget.dart';
import 'package:project2/components/text/text_widget.dart';
import 'package:project2/constants/app_styles.dart';
import 'package:project2/constants/constants.dart';
import 'package:project2/models/Product_model.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({super.key, required this.product, this.onTap});
  final Product product;
  final Function()? onTap;

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      width: 200, 
      height: 280,
      child: InkWell(
        onTap: widget.onTap,
        child: Card(
          margin: const EdgeInsets.all(10),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 10,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  widget.product.image!,
                  height: 100,
                  width: 100,
                  fit: BoxFit.fill,
                ),
              ),
              Expanded(
                  child: TextWidget(
                text: widget.product.name!,
                size: 20,
              )),
              height16,
              TextWidget(
                text: "${(widget.product.price! * 2).toString()} S.R",
                size: 16,
                lineThrough: true,
                color: greyColor,
              ),
              TextWidget(
                text: "${widget.product.price.toString()} S.R",
                size: 20,
                color: darkPrimaryColor,
              ),
              height16,
              Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RatingBarWidget(
                        product: widget.product,
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
