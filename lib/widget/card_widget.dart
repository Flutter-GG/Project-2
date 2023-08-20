import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project2/model/products.dart';
import 'package:project2/utilities/ui_classes/spaces.dart';
import 'package:project2/widget/customtext_widget.dart';

import '../main.dart';

class CardWidget extends StatefulWidget {
  CardWidget({
    super.key,
    required this.products,
  });

  final Products products;

  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 700,
        height: 700,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.deepOrangeAccent, width: 0.3),
            color: Colors.white),
        child: Column(
          children: [
            Spaces.spaceH16,
            ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.network(
                  widget.products.productImage!,
                  height: 80,
                  width: 80,
                  fit: BoxFit.fill,
                )),
            Spaces.spaceH8,
            CustomTextWidget(
              text: widget.products.productName!,
              fontSize: 15,
            ),
            // Spaces.spaceH16,
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Spaces.spaceW8,
                CustomTextWidget(
                  text: "${widget.products.prica} \$",
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                Spacer(),
                IconButton(
                  onPressed: () {
                    final object = Products(
                        productId: widget.products.productId,
                        productName: widget.products.productName,
                        productDescribe: widget.products.productDescribe,
                        prica: widget.products.prica,
                        productImage: widget.products.productImage,
                        amount: 1);
                    cartListProducts.add(object);
                  },
                  icon: Icon(
                    Icons.add,
                    size: 18,
                    color: Colors.deepOrangeAccent,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
