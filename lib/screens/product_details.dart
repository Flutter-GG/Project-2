import 'package:flutter/material.dart';
import 'package:project2/components/general/product_information.dart';
import 'package:project2/constants/app_styles.dart';
import 'package:project2/extensions/navigator.dart';
import 'package:project2/models/Product_model.dart';
import 'package:project2/screens/products_screen.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key, required this.product, required this.afterAddToCart});
  final Product product;
  final Function() afterAddToCart;

  @override
  State<ProductDetails> createState() => ProductDetailsState();
}

class ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              context.pop(const ProductsScreen());
            },
            icon: const Icon(Icons.arrow_back)),
        backgroundColor: primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 2,
              child: Image.network(
                widget.product.image!,
              ),
            ),
            ProductInformation(product: widget.product, afterAddToCart:widget.afterAddToCart),
          ],
        ),
      ),
    );
  }
}
