import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/components/custom_app_bar.dart';
import 'package:flutter_shopping_app/components/custom_products.dart';
import 'package:flutter_shopping_app/data/global_var.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

/* this is where the user products choice */
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ItemsScreenState();
}

class _ItemsScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(text: 'Profile'),
      body: LiquidPullToRefresh(
        onRefresh: () {
          return Future.delayed(const Duration(milliseconds: 5), () {
            setState(() {});
          });
        },
        child: CustomProductsInformation(
          products: profileProducts,
        ),
      ),
    );
  }
}
