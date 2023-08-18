import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import 'number_of_item_row.dart';

class CartButton extends StatefulWidget {
  const CartButton({
    super.key,
    this.buttonSize = 60,
    this.leftMarg = 25,  this.cartIconColor = GColors.green,
  });

  final double buttonSize;
  final double leftMarg;
  final Color cartIconColor;

  @override
  State<CartButton> createState() => _CartButtonState();
}

class _CartButtonState extends State<CartButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('$counter Item add to the cart'),
        ));
      },
      child: Container(
        margin: EdgeInsets.only(left: widget.leftMarg),
        padding: const EdgeInsets.all(15),
        height: widget.buttonSize,
        width: widget.buttonSize,
        decoration: BoxDecoration(
            color: widget.cartIconColor, borderRadius: BorderRadius.circular(30)),
        child: Image.network(
          "https://cdn-icons-png.flaticon.com/128/833/833314.png",
          color: GColors.white,
        ),
      ),
    );
  }
}
