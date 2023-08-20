// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_project2/constants/colors.dart';
import 'package:flutter_project2/constants/spaces.dart';
import 'package:flutter_project2/data/data_model.dart';
import 'package:flutter_project2/main.dart';
import 'package:flutter_project2/screens/item_info_screen.dart';
import 'package:flutter_project2/utils/extentions/naviagator.dart';
import 'package:flutter_project2/utils/extentions/sizes.dart';
import 'package:flutter_project2/utils/helpers.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ListItem extends StatefulWidget {
  ListItem({super.key, required this.item});
  final ShoppingItems item;

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (context) {
              oneUserList.remove(widget.item);
              setState(() {});
            },
            icon: Icons.delete,
            label: 'Delete',
          ),
        ],
      ),
      child: InkWell(
        onTap: () {
          ItemInfo(
            item: widget.item,
          ).push(context);
        },
        child: SizedBox(
          width: context.getWidth(),
          height: 100,
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  chooseImg(widget.item, 80),
                  Text(
                    widget.item.itemName!,
                    style: const TextStyle(fontSize: 19),
                  ),
                  Spaces.spaceW5,
                  badges.Badge(
                    badgeContent: Text(widget.item.amount.toString()),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      isChecked = !isChecked;
                      setState(() {});
                    },
                    icon: Icon(
                      isChecked
                          ? Icons.check_circle_outline
                          : Icons.circle_outlined,
                      color: AppColors.secondry,
                      size: 50,
                    ),
                  ),
                  Spaces.spaceW10
                ],
              ),
              const Divider(
                thickness: 3,
              )
            ],
          ),
        ),
      ),
    );
  }
}
