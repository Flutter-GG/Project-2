import 'package:flutter/material.dart';
import 'package:project_2/Models/sell_model.dart';
import 'package:project_2/Widgets/wapp_text_field.dart';
import 'package:project_2/main.dart';

class WappAddController extends StatelessWidget {
  final TextEditingController priceControler;
  final TextEditingController titleControler;

  final TextEditingController itemImageControler;

  final TextEditingController contentControler;

  final TextEditingController imagesControler;

  const WappAddController(
      {super.key,
      required this.priceControler,
      required this.titleControler,
      required this.itemImageControler,
      required this.contentControler,
      required this.imagesControler});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          WappTextField(
              title: "Add New price",
              hint: "price",
              controller: priceControler),
          WappTextField(
              title: "Add title", hint: "title", controller: titleControler),
          WappTextField(
              title: "Add item Image",
              hint: "item Image",
              controller: itemImageControler),
          WappTextField(
              title: "Add  content",
              hint: "content",
              controller: contentControler),
          WappTextField(
              title: "Add  images",
              hint: "images",
              controller: imagesControler),
          IconButton(
            onPressed: () {
              final SellDataObject = SellDataModel(
                price: int.tryParse(priceControler.text) ?? 0,
                title: titleControler.text,
                itemImage: itemImageControler.text,
                content: contentControler.text,
                images: imagesControler.text,
              );
              SelllistData.add(SellDataObject);
              Navigator.pop(context, "back");
            },
            icon: Icon(
              Icons.save,
              size: 40,
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
