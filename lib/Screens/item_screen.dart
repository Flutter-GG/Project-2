import 'package:flutter/material.dart';
import 'package:project_2/Models/sell_model.dart';
import 'package:project_2/constants/extensions.dart';

import '../constants/spacings.dart';
import '../main.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({
    super.key,
    required this.sellDataModel,
  });
  final SellDataModel sellDataModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          sellDataModel.title.toString(),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          kVSpace24,
          Text(
            sellDataModel.title.toString(),
          ),
          Image(
            image: NetworkImage(
              sellDataModel.itemImage.toString(),
            ),
          ),
          Text(
            sellDataModel.content.toString(),
          ),
          Container(
            width: context.getWidth / 2,
            child: ElevatedButton(
              onPressed: () {
                CartList.add(sellDataModel);
              },
              style: ElevatedButton.styleFrom(
                  elevation: 12.0,
                  backgroundColor: Colors.green,
                  textStyle: const TextStyle(color: Colors.white)),
              child: Row(
                children: [
                  Text('Add to Cart'),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.shopping_bag,
                    color: Colors.black,
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
