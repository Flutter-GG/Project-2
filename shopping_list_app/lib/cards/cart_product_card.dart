import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:shopping_list_app/main.dart';
import 'package:shopping_list_app/models/product_model.dart';
import 'package:shopping_list_app/views/cart_view.dart';

class CartProductCard extends StatefulWidget {
  const CartProductCard({super.key, required this.product, this.quantity = 1});

  final ProductModel product;
  final int quantity;

  @override
  State<CartProductCard> createState() => _CartProductCardState();
}

class _CartProductCardState extends State<CartProductCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        margin: const EdgeInsets.all(8),
        elevation: 3,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      widget.product.thumbnail!,
                      height: 70,
                      width: 70,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text(
                        overflow: TextOverflow.fade,
                        widget.product.title!,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            NumberPicker(
              axis: Axis.horizontal,
              itemWidth: 25,
              minValue: 1,
              maxValue: 9,
              value: widget.quantity,
              onChanged: (value) {
                cart[widget.product] = value;
                setState(() {});
                context
                    .findAncestorStateOfType<CartViewState>()
                    ?.setState(() {});
              },
            ),
            IconButton(
              onPressed: () {
                cart.remove(widget.product);
                setState(() {});
                context
                    .findAncestorStateOfType<CartViewState>()
                    ?.setState(() {});
              },
              icon: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
