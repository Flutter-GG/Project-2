import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:shopping_list_app/main.dart';
import 'package:shopping_list_app/model/items_data.dart';
import 'package:shopping_list_app/utils/colors_app.dart';
import 'package:shopping_list_app/utils/page_size.dart';

class CardDetailWidget extends StatefulWidget {
  const CardDetailWidget({
    super.key,
    required this.listItems,
  });
  final ItemsData listItems;

  @override
  State<CardDetailWidget> createState() => _CardDetailWidgetState();
}

class _CardDetailWidgetState extends State<CardDetailWidget> {
  @override
  Widget build(BuildContext context) {
    
    return Slidable(
      endActionPane: ActionPane(motion: StretchMotion(), children: [
        SlidableAction(
            onPressed: ((context) {
              _removeItems();
            }),
            icon: Icons.delete,
            label: 'Delete',
            backgroundColor: ColorsApp.redColor,
            foregroundColor: ColorsApp.whiteColor)
      ]),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        margin: const EdgeInsets.all(8),
        elevation: 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      widget.listItems.imageItem!,
                      height: 80,
                      width: 75,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 150,
                      child: Text(
                        overflow: TextOverflow.fade,
                        widget.listItems.name!,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Text(
                    overflow: TextOverflow.fade,
                    "${widget.listItems.price} \RS",
                    style: const TextStyle(
                        color: ColorsApp.amberColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                PageSize.spaceH40,
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: ColorsApp.amberColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.remove),
                ),
                PageSize.spaceH40,
                Text("1"),
                PageSize.spaceH40,
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: ColorsApp.amberColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.add),
                ),
              ],
            ),
            PageSize.spaceH24,
          ],
        ),
      ),
    );
  }

  _removeItems() {
    listItems.remove(widget.listItems);
    cartItemsData.contains(widget.listItems)
        ? cartItemsData.remove(widget.listItems)
        : null;

    setState(() {});
  }
}
