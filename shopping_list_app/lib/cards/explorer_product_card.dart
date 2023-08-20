import 'package:flutter/material.dart';
import 'package:shopping_list_app/extensions/app_measurement.dart';
import 'package:shopping_list_app/models/product_model.dart';

class ExplorerProductCard extends StatelessWidget {
  const ExplorerProductCard({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: (context.getHeight() / 3) - 100,
            width: context.getWidth() / 2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: FittedBox(
                fit: BoxFit.fill,
                child: Image.network(
                  product.thumbnail!,
                ),
              ),
            ),
          ),
          Row(
            children: [
              const Icon(Icons.star),
              Text("${product.rating} "),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            product.title!,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "\$${product.price} ",
            style: TextStyle(color: Colors.amberAccent[400]),
          ),
        ],
      ),
    );
  }
}
