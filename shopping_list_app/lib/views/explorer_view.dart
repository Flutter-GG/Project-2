import 'package:flutter/material.dart';
import 'package:shopping_list_app/cards/explorer_product_card.dart';
import 'package:shopping_list_app/components/explorer_app_bar.dart';
import 'package:shopping_list_app/extensions/app_measurement.dart';
import 'package:shopping_list_app/extensions/navigation.dart';
import 'package:shopping_list_app/main.dart';
import 'package:shopping_list_app/views/product_view.dart';

class ExplorerView extends StatelessWidget {
  const ExplorerView({super.key});

  @override
  Widget build(BuildContext context) {
    double cellWidth = context.getWidth() / 2;
    double cellHeight = context.getHeight() / 3;
    return Scaffold(
      appBar: ExplorerAppBar(
        appBar: AppBar(),
      ),
      body: SafeArea(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: (cellWidth / cellHeight)),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                context.navigateTo(ProductView(
                  product: products[index],
                ));
              },
              child: ExplorerProductCard(
                product: products[index],
              ),
            );
          },
          itemCount: products.length,
        ),
      ),
    );
  }
}
