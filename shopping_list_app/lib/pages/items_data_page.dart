import 'package:flutter/material.dart';
import 'package:shopping_list_app/main.dart';
import 'package:shopping_list_app/utils/colors_app.dart';
import 'package:shopping_list_app/widgets/appBar_widget.dart';
import 'package:shopping_list_app/widgets/items_card_widget.dart';

class ItemsDataPage extends StatelessWidget {
  const ItemsDataPage({
    super.key,
    required this.categoryId,
    required this.categorytitle,
  });

  final String categoryId;
  final String categorytitle;

  @override
  Widget build(BuildContext context) {
    
    final checkedId = listItems
        .where((element) => element.categories!.contains(categoryId))
        .toList();

    return Scaffold(
      appBar: AppBarWidget(
          backgroundColor: ColorsApp.primeryColor, text: categorytitle),
      body: ListView.builder(
        itemCount: checkedId.length,
        itemBuilder: (context, index) {
          return ItemsCardWidget(
            listItems: checkedId[index],
          );
        },
      ),
    );
  }
}
