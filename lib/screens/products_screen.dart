import 'package:flutter/material.dart';
import 'package:project2/components/buttons/categories_button.dart';
import 'package:project2/components/buttons/drop_down.dart';
import 'package:project2/components/general/product_list.dart';
import 'package:project2/components/text/text_widget.dart';
import 'package:project2/constants/app_styles.dart';
import 'package:project2/constants/constants.dart';
import 'package:project2/data/global_data.dart';
import 'package:project2/data/product.dart';
import 'package:project2/extensions/navigator.dart';
import 'package:project2/models/Product_model.dart';
import 'package:project2/screens/cart_screen.dart';
import 'package:badges/badges.dart' as badges;

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key,});

  @override
  State<ProductsScreen> createState() => ProductsScreenState();
}

class ProductsScreenState extends State<ProductsScreen> {
  @override
  void initState() {
    super.initState();
    for (var element in productData["product"]) {
      listProducts.add(Product.fromJson(element));
    }
    categoryType = "All" ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextWidget(text: "Welcome ${userName.toString()}",color: whiteColor,) ,
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
              onTap: () {
                context.getNavigator( CartScreen(afterAddToCart:(){setState(() {
                  
                });} ,));
              },
              child: badges.Badge(
                badgeStyle: const badges.BadgeStyle(badgeColor: Colors.amber),
                badgeContent: Text(allCartProducts.toString()),
                showBadge: allCartProducts > 0 ? true : false,
                child: const Icon(Icons.shopping_cart_outlined),
              ),
            ),
          ),
        ],
        backgroundColor: primaryColor,
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          children: [
            const categoriesButton(),
            height16,
            const Center(child: DropdownDemo()),
            height16,
            Expanded(
              child: ProductList(category:categoryType.toString())
            ),
          ],
        ),
      ),
    );
  }
}
