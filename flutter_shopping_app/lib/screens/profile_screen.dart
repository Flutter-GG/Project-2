import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/components/custom_app_bar.dart';
import 'package:flutter_shopping_app/components/custom_products.dart';
import 'package:flutter_shopping_app/data/global_var.dart';
import 'package:flutter_shopping_app/data/products_model.dart';
import 'package:flutter_shopping_app/data/reading_json.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ItemsScreenState();
}

class _ItemsScreenState extends State<ProfileScreen> {
  bool _isLoading = true;
  @override
  void initState() {
    super.initState();
    _loadItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(text: 'Profile'),
      body: _isLoading
          ? const CircularProgressIndicator()
          : CustomProductsInformation(
              products: products,
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
