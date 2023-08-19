import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/components/custom_app_bar.dart';
import 'package:flutter_shopping_app/components/custom_products.dart';
import 'package:flutter_shopping_app/data/global_var.dart';
import 'package:flutter_shopping_app/data/products_model.dart';
import 'package:flutter_shopping_app/data/reading_json.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:loading_animations/loading_animations.dart';

/* this is the home page for all products */
class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ItemsScreenState();
}

class _ItemsScreenState extends State<ProductsScreen> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(text: 'Home'),
      body: LiquidPullToRefresh(
        onRefresh: () {
          return Future.delayed(const Duration(milliseconds: 5), () {
            setState(() {});
          });
        },
        child: _isLoading
            ? LoadingFilling.square()
            : CustomProductsInformation(
                products: products,
              ),
      ),
    );
  }

  void _loadItems() async {
    if (products.isEmpty) {
      try {
        var jsonData = await fetchJsonData();
        for (var product in jsonData['products']) {
          products.add(ProductsModel.fromJson(product));
        }
      } finally {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }
}
