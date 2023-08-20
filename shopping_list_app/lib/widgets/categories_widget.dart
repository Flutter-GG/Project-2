import 'package:flutter/material.dart';
import 'package:shopping_list_app/data/categories_data.dart';
import 'package:shopping_list_app/widgets/category_card_widget.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 1 / 1,
            mainAxisSpacing: 5,
            crossAxisSpacing: 15),
        children: CategoriesData.map((categoryDat) => CategoryCarddWidget(
              id: categoryDat.id,
              title: categoryDat.title,
              imageUrl: categoryDat.imageUrl,
            )).toList());
  }
}
