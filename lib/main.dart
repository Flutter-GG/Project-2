import 'package:flutter/material.dart';
import 'package:project_2/models/product_model.dart';
import 'package:project_2/data/products_data.dart';
import 'package:project_2/widget/intro.dart';

List<Products> productslist = [];

void main() {
 
  for (var element in productsData["products"]) {
    productslist.add(Products.fromJson(element));
  } 
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(home: IntroScreenDefault());
  }
}
