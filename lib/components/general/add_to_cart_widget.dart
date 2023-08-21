import 'package:countnumberbutton/countnumberbutton.dart';
import 'package:flutter/material.dart';
import 'package:project2/components/text/text_widget.dart';
import 'package:project2/constants/app_styles.dart';
import 'package:project2/constants/constants.dart';
import 'package:project2/models/Product_model.dart';
import 'package:project2/screens/product_details.dart';
import 'package:project2/utility/add_to_cart.dart';

class AddtoCartWidget extends StatefulWidget {
  const AddtoCartWidget({super.key, required this.product, required this.afterAddToCart});
  final Product product;
    final Function() afterAddToCart;


  @override
  State<AddtoCartWidget> createState() => _AddtoCartWidgetState();
}

class _AddtoCartWidgetState extends State<AddtoCartWidget> {
  @override
  Widget build(BuildContext context) {
  int quantity = 1;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          onTap: () {
            if (widget.product.quantity! > 0) {
              addToCart(product: widget.product, quantity: quantity);
              context
                  .findAncestorStateOfType<ProductDetailsState>()!
                  .setState(() {});

                  widget.afterAddToCart.call();
            }
          },
          child: Container(
            alignment: Alignment.center,
            height: 50,
            width: AppLayout.getSize(context).width - 200,
            decoration: BoxDecoration(
                color: darkPrimaryColor,
                borderRadius: BorderRadius.circular(5)),
            child:  const TextWidget(
              text: "Add to cart",
              color: whiteColor,
            ),
          ),
        ),
        width16,
        Expanded(
          child: CountNumberButton(
            width: 120,
            height: 45,
            initValue: widget.product.quantity! > 0 ? 1 : 0,
            minValue: widget.product.quantity! > 0 ? 1 : 0,
            maxValue: widget.product.quantity!,
            iconColor: Colors.white,
            iconSize: 25.0,
            buttonColor: darkPrimaryColor,
            textColor: Colors.black,
            icon_left: const Icon(Icons.remove),
            icon_right: const Icon(Icons.add),
            onChanged: (value) {
              quantity = value;
            },
            textsize: 20,
          ),
        ),
      ],
    );
  }
}
