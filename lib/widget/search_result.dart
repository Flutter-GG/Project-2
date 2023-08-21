import 'package:flutter/material.dart';
import 'package:project_2/card.dart';
import 'package:project_2/main.dart';
import 'package:project_2/screens/search.dart';

result() {
  List<Widget> result = [];

  for (var element in productslist) {
    if (element.title!.toLowerCase().contains(controllerItem.text)) {
      result.add(SizedBox(height: 250, child: CardWidget(product: element)));
    }
  }
  return result;
}
