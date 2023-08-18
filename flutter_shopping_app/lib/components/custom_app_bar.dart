import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/components/custom_text.dart';
import 'package:flutter_shopping_app/screens/add_product_screen.dart';
import 'package:flutter_shopping_app/screens/cart_screen.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  _CustomAppBarState createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
          onPressed: () {
            _cart(context);
          },
          icon: const Icon(Icons.shopping_cart),
        ),
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AddItemScreen()),
            ).then(
              (value) {
                if (value == "addedProduct") {
                  setState(() {});
                }
              },
            );
          },
          icon: const Icon(Icons.add),
        ),
      ],
      title: CustomText(
        text: widget.text,
      ),
    );
  }

  void _cart(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CartScreen()),
    );
  }
}
