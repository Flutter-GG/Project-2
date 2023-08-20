import 'package:flutter/material.dart';
import 'package:shopping_list_app/pages/items_data_page.dart';
import 'package:shopping_list_app/utils/colors_app.dart';
import 'package:shopping_list_app/utils/page_size.dart';
import 'package:shopping_list_app/widgets/text_widget.dart';

class CategoryCarddWidget extends StatelessWidget {
  const CategoryCarddWidget(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.id});

  final String id;
  final String imageUrl;
  final String title;

  void selectCategory(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => ItemsDataPage(categoryId: id, categorytitle: title),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      child: Card(
        child: Column(
          children: [
            PageSize.spaceH8,
            Image.network(
              imageUrl,
              height: 100,
              fit: BoxFit.cover,
            ),
            PageSize.spaceH16,
            Container(
              alignment: Alignment.center,
              child: TextWidget(
                text: title,
                size: 20,
                isFontWeight: true,
                textColor: ColorsApp.amberColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
