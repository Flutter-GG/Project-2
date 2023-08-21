import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:project2/data/global_data.dart';
import 'package:project2/models/Product_model.dart';
import 'package:project2/screens/cart_screen.dart';

class DeleteProduct extends StatefulWidget {
  const DeleteProduct({
    super.key,
    required this.product,
    required this.afterAddToCart,
  });
  final Product product;
  final Function() afterAddToCart;

  @override
  State<DeleteProduct> createState() => _DeleteProductState();
}

class _DeleteProductState extends State<DeleteProduct> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        AwesomeDialog(
          context: context,
          dialogType: DialogType.warning,
          title: 'Do you want to remove this item ?',
          btnCancelOnPress: () {},
          btnOkOnPress: () {
            for (var element in listProducts) {
              if (element.id == widget.product.id) {
                element.quantity = element.quantity! + widget.product.quantity!;
                allCartProducts -= widget.product.quantity!;
                listCart.remove(widget.product);
              }
            }
            context.findAncestorStateOfType<CartScreenState>()!.setState(() {});
            widget.afterAddToCart.call();
          },
        ).show();
      },
      icon: const Icon(
        Icons.delete,
        size: 20,
      ),
    );
  }
}
