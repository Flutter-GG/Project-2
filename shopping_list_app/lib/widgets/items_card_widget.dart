import 'package:flutter/material.dart';
import 'package:shopping_list_app/model/items_data.dart';
import 'package:shopping_list_app/pages/Item_detail_page.dart';

class ItemsCardWidget extends StatefulWidget {
  const ItemsCardWidget({
    super.key,
    required this.listItems,
  });
  final ItemsData listItems;

  @override
  State<ItemsCardWidget> createState() => _ItemsCardWidgetState();
}

class _ItemsCardWidgetState extends State<ItemsCardWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ItemDetailPage(
                    listItems: widget.listItems,
                  ))),
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
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    overflow: TextOverflow.fade,
                    "${widget.listItems.price} \RS",
                    style: const TextStyle(
                        color: Colors.amber,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
