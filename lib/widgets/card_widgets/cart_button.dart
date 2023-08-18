import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import 'number_of_item_row.dart';

class CartButton extends StatefulWidget {
  const CartButton({
    super.key,
  });

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
        margin: const EdgeInsets.only(left: 25),
        padding: const EdgeInsets.all(15),
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: GColors.green, borderRadius: BorderRadius.circular(30)),
        child: Image.network(
          "https://cdn-icons-png.flaticon.com/128/833/833314.png",
          color: GColors.white,
        ),
      ),
    );
  }
}
