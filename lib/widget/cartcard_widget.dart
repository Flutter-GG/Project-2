import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project2/model/products.dart';
import 'package:project2/utilities/ui_classes/spaces.dart';
import 'package:project2/widget/customtext_widget.dart';

class CartCardWidget extends StatefulWidget {
  const CartCardWidget({super.key, required this.products});
  final Products products;

  @override
  _CartCardWidgetState createState() => _CartCardWidgetState();
}

class _CartCardWidgetState extends State<CartCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white),
        child: Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.network(
                  widget.products.productImage!,
                  height: 100,
                  width: 100,
                  fit: BoxFit.fill,
                )),
            Spaces.spaceW8,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextWidget(
                  text: widget.products.productName!,
                  fontSize: 20,
                ),
                Spaces.spaceH24,
                SizedBox(
                  width: MediaQuery.of(context).size.width - 150,
                  child: Row(
                    children: [
                      CustomTextWidget(
                        text: "${widget.products.prica} \$",
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.orange,
                      ),
                      Spacer(),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                widget.products.amount =
                                    widget.products.amount! - 1;
                                setState(() {});
                              },
                              icon: Icon(Icons.remove, size: 20)),
                          CustomTextWidget(
                            text: widget.products.amount.toString(),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                          IconButton(
                              onPressed: () {
                                widget.products.amount =
                                    widget.products.amount! + 1;
                                setState(() {});
                              },
                              icon: Icon(Icons.add, size: 20)),
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
            // Spaces.spaceH16,
          ],
        ),
      ),
    );
  }
}
