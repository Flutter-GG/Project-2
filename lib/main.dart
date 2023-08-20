import 'package:flutter/material.dart';
import 'package:shop_app/data/product_data.dart';
import 'package:shop_app/screen/home_page.dart';
import 'models/proudct_model.dart';


List<Product>? listOfProduct = [];
List<Product>? newProductList = [];
List<Product>? cartList = [];

void main() {

  for(var element in productsData['proudcts']) {
    listOfProduct?.add(Product.fromJson(element));
  }

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
 }
 


 
