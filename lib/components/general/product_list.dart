import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:project2/components/general/card_widget.dart';
import 'package:project2/data/global_data.dart';
import 'package:project2/screens/product_details.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key, required this.category});
  final String category;

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: listProducts.length,
          itemBuilder: (context, index) {
            return OpenContainer(
              transitionDuration: const Duration(milliseconds: 1500),
              openBuilder: (context, _) => ProductDetails(
                  product: listProducts[index],
                  afterAddToCart: () {
                    setState(() {});
                  }),
              closedBuilder: (context, VoidCallback openContainer) {
                return widget.category == "All"?
                CardWidget(
                  product: listProducts[index],
                  onTap: openContainer,
                ) : listProducts[index].category!.toLowerCase() == widget.category.toLowerCase()?
                CardWidget(
                  product: listProducts[index],
                  onTap: openContainer,
                ): Container();
              },
            );
          }),
    );
  }
}
