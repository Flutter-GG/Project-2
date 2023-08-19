import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/components/custom_text.dart';
import 'package:flutter_shopping_app/screens/add_product_screen.dart';
import 'package:flutter_shopping_app/screens/cart_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key, required this.text}) : super(key: key);
  final String text;
/* this is the app bar componant */
  @override
  // ignore: library_private_types_in_public_api
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
          icon: const Icon(FontAwesomeIcons.cartShopping),
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
          icon: const Icon(FontAwesomeIcons.plus),
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
