import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shopping_list_app/components/custom_button.dart';
import 'package:shopping_list_app/components/image_big_display.dart';
import 'package:shopping_list_app/extensions/app_measurement.dart';
import 'package:shopping_list_app/main.dart';
import 'package:shopping_list_app/models/product_model.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                product.title!,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Shimmer.fromColors(
                baseColor: Colors.amberAccent[400]!,
                highlightColor: Colors.white,
                child: Text(
                  "\$${product.price} ",
                  style:
                      TextStyle(color: Colors.amberAccent[400], fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                children: [
                  const Icon(Icons.star),
                  Text("${product.rating} "),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ImageBigDisplay(
                    imageURL: product.thumbnail!,
                  ),
                  for (int i = 0; i < product.images!.length; i++)
                    ImageBigDisplay(
                      imageURL: product.images![i],
                    ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Description",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      product.description!,
                      strutStyle: const StrutStyle(fontSize: 16),
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomButton(
                          buttonText: "BUY NOW",
                          onPressed: () {},
                          width: context.getWidth() / 2 - 24,
                          backgroundColor: 0xffFFFFFF,
                          borderColor: 0xff63c5b9,
                          foregroundColor: 0xff63c5b9,
                        ),
                        CustomButton(
                          buttonText: "Add to Cart",
                          onPressed: () {
                            cart.putIfAbsent(product, (() => 1));
                          },
                          width: context.getWidth() / 2 - 24,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
