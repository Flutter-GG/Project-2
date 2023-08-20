import 'package:flutter/material.dart';
import 'package:shopping_list_app/main.dart';
import 'package:shopping_list_app/model/items_data.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:shopping_list_app/utils/colors_app.dart';
import 'package:shopping_list_app/utils/page_size.dart';
import 'package:shopping_list_app/widgets/appBar_widget.dart';
import 'package:shopping_list_app/widgets/button_widget.dart';
import 'package:shopping_list_app/widgets/text_widget.dart';

class ItemDetailPage extends StatefulWidget {
  const ItemDetailPage({
    super.key,
    required this.listItems,
  });
  final ItemsData listItems;

  @override
  State<ItemDetailPage> createState() => _ItemDetailPageState();
}

class _ItemDetailPageState extends State<ItemDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        backgroundColor: ColorsApp.primeryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PageSize.spaceH16,
            TextWidget(
                text: widget.listItems.name!,
                size: 20,
                textColor: ColorsApp.black45Color,
                textAlign: TextAlign.center,
                isFontWeight: false),
            Padding(
                padding: const EdgeInsets.all(25),
                child: Image.network(
                  widget.listItems.imageItem!,
                  width: 200,
                  height: 200,
                )),
            PageSize.spaceH24,
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Container(
                height: 35,
                width: 2,
                color: ColorsApp.black45Color,
              ),
              Column(
                children: [
                  const TextWidget(
                      text: "Price",
                      size: 17,
                      textColor: ColorsApp.black45Color,
                      textAlign: TextAlign.center,
                      isFontWeight: false),
                  PageSize.spaceH8,
                  TextWidget(
                      text: "${widget.listItems.price} \RS",
                      size: 20,
                      textColor: ColorsApp.greenColor,
                      textAlign: TextAlign.center,
                      isFontWeight: true),
                ],
              ),
              Container(
                height: 35,
                width: 2,
                color: ColorsApp.black45Color,
              ),
            ]),
            PageSize.spaceH34,
            const TextWidget(
                text: "Description :",
                size: 20,
                textColor: ColorsApp.black45Color,
                isFontWeight: false),
            PageSize.spaceH16,
            TextWidget(
                text: widget.listItems.description!,
                size: 20,
                textColor: ColorsApp.primeryColor,
                isFontWeight: false),
            PageSize.spaceH34,
            ButtonsWidget(
                text: "add to cart",
                onPressed: () {
                  cartItemsData.add(widget.listItems);
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.success,
                    animType: AnimType.leftSlide,
                    title: 'Succes',
                  ).show();
                }),
          ],
        ),
      ),
    );
  }
}
