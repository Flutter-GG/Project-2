// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_project2/components/appbar_widget.dart';
import 'package:flutter_project2/components/button_widget.dart';
import 'package:flutter_project2/components/textfield_widget.dart';
import 'package:flutter_project2/constants/colors.dart';
import 'package:flutter_project2/constants/spaces.dart';
import 'package:flutter_project2/data/data_model.dart';
import 'package:flutter_project2/screens/home_screen.dart';
import 'package:flutter_project2/utils/extentions/naviagator.dart';
import 'package:flutter_project2/utils/helpers.dart';
import 'package:quantity_input/quantity_input.dart';

class ItemInfo extends StatefulWidget {
  ItemInfo({super.key, required this.item});
  final ShoppingItems item;
  TextEditingController nameController = TextEditingController();
  @override
  State<ItemInfo> createState() => _ItemInfoState();
}

class _ItemInfoState extends State<ItemInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarWidget('Item update'),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: chooseImg(widget.item, 300),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      widget.item.itemName!,
                      style: TextStyle(fontSize: 25, color: AppColors.primary),
                    ),
                    TextfieldWidget(
                        label: 'Upadate Name',
                        controller: widget.nameController),
                    QuantityInput(
                      buttonColor: AppColors.secondry,
                      value: widget.item.amount,
                      onChanged: (value) => setState(
                        () => widget.item.amount = int.parse(
                          value.replaceAll(',', ''),
                        ),
                      ),
                    ),
                    ButtonWidget(
                        text: 'Update',
                        buttonAction: () {
                          if (widget.nameController.text.isNotEmpty) {
                            widget.item.itemName =
                                widget.nameController.text.trim().toLowerCase();
                            setState(() {});
                            const HomeScreen().push(context);
                          }
                        },
                        buttonColor: AppColors.secondry),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
