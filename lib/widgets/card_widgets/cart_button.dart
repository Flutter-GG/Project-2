import 'package:flutter/material.dart';
import 'package:ghars/constants/colors.dart';
import 'package:ghars/data_to_be_accessed.dart';
import 'package:ghars/model/plants_model.dart';


class CartButton extends StatefulWidget {
  const CartButton({
    super.key,
    this.buttonSize = 60,
    this.leftMarg = 25,
    this.cartIconColor = GColors.green,
    required this.plants,
  });

  final double buttonSize;
  final double leftMarg;
  final Color cartIconColor;
  final Plants plants;

  @override
  State<CartButton> createState() => _CartButtonState();
}

class _CartButtonState extends State<CartButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (!cartItemList.contains(widget.plants)) {
          cartItemList.add(widget.plants);
        }
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: GColors.white,
          padding: const EdgeInsets.only(bottom: 20, left: 20),
          duration: const Duration(milliseconds: 1500),
          content: Text(
            '${widget.plants.quantity} Item add to the cart',
            style: const TextStyle(
              color: GColors.darkGreen,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
        ));
        setState(() {});
      },
      child: Container(
        margin: EdgeInsets.only(left: widget.leftMarg),
        padding: const EdgeInsets.all(15),
        height: widget.buttonSize,
        width: widget.buttonSize,
        decoration: BoxDecoration(
            color: widget.cartIconColor,
            borderRadius: BorderRadius.circular(30)),
        child: Image.network(
          "https://cdn-icons-png.flaticon.com/128/833/833314.png",
          color: GColors.white,
        ),
      ),
    );
  }
}
