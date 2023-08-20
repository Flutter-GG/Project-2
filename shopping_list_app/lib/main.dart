import 'package:flutter/material.dart';
import 'package:shopping_list_app/data/products_json.dart';
import 'package:shopping_list_app/models/product_model.dart';
import 'package:shopping_list_app/views/bottom_navigation_bar.dart';

void main() {
  for (var productJson in productsJson) {
    products.add(ProductModel.fromJson(productJson));
  }
  runApp(const MainApp());
}

List products = [];
Map<ProductModel, int> cart = Map();

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SHBottomNavigationBar(),
    );
  }
}
