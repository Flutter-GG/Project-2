import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/components/custom_products.dart';
import 'package:flutter_shopping_app/data/global_var.dart';
import 'package:flutter_shopping_app/data/products_model.dart';
import 'package:flutter_shopping_app/data/reading_json.dart';

class ItemsScreen extends StatefulWidget {
  const ItemsScreen({super.key});

  @override
  State<ItemsScreen> createState() => _ItemsScreenState();
}

class _ItemsScreenState extends State<ItemsScreen> {
  @override
  void initState() {
    super.initState();
    _loadItems();
  }

  @override
  Widget build(BuildContext context) {
    return CustomProductsInformation(
      products: products,
    );
  }

  void _loadItems() {
    if (products.isEmpty) {
      for (var product in jsonData['products']) {
        products.add(ProductsModel.fromJson(product));
      }
    }
  }
}
