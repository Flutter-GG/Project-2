import 'package:flutter/material.dart';
import 'package:shopping_list_app/data/app_data.dart';
import 'package:shopping_list_app/model/category_data.dart';
import 'package:shopping_list_app/model/items_data.dart';
import 'package:shopping_list_app/pages/introduction_page.dart';

List<Category> listCategory = [];
List<ItemsData> listItems = [];
List<ItemsData> cartItemsData = [];

void main() {
  for (var element in shoppingData["itemsData"]) {
    listItems.add(ItemsData.fromJson(element));
  }

 

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: IntroductionPage());
  }
}
