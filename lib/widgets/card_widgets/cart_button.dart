import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../main.dart';
import '../../model/plants_model.dart';
import 'number_of_item_row.dart';

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
        if (!listOfCartItem.contains(listOfPlants.indexOf(widget.plants))) {
          listOfCartItem.add(widget.plants);
          print(listOfCartItem);
        }
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: GColors.white,
          padding: const EdgeInsets.only(bottom: 20, left: 20),
          duration: const Duration(milliseconds: 1500),
          content: Text(
            '$counter Item add to the cart',
            style: const TextStyle(
              color: GColors.darkGreen,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
        ));
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
