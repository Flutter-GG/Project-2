import 'package:flutter/material.dart';
import 'package:shopping_list/app/utils/constants/colors.dart';

class CartItemCard extends StatelessWidget {
  final String item;
  final Function onDismissed;

  const CartItemCard({
    Key? key,
    required this.item,
    required this.onDismissed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(item),
      direction: DismissDirection.endToStart,
      background: Container(
        color: Colors.red,
        alignment: Alignment.centerRight,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Icon(Icons.delete, color: backgroundColor),
      ),
      onDismissed: (direction) => onDismissed(),
      child: Card(
        color: backgroundColor,
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        elevation: 5,
        child: ListTile(
          leading: Icon(Icons.shopping_cart_outlined),
          title: Text(item, style: TextStyle(fontSize: 18)),
        ),
      ),
    );
  }
}
