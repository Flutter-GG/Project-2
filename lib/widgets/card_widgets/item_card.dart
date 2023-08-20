import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import '../../constants/colors.dart';
import '../../constants/spaces.dart';
import '../../model/plants_model.dart';
import 'cart_button.dart';
import 'number_of_item_row.dart';

class ItemCard extends StatefulWidget {
  const ItemCard({
    super.key,
    required this.plants,
  });

  final Plants plants;

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Positioned(
            child: Container(
              margin: const EdgeInsets.only(right: 25, left: 20),
              padding: const EdgeInsets.only(
                top: 15,
              ),
              decoration: BoxDecoration(
                color: GColors.beg,
                borderRadius: BorderRadius.circular(30),
              ),
              width: MediaQuery.sizeOf(context).width - 100,
              height: MediaQuery.sizeOf(context).height - 450,
              child: const Text(""),
            ),
          ),
          Positioned(
            right: 50,
            top: 20,
            child: Shimmer.fromColors(
              baseColor: GColors.black,
              highlightColor: GColors.lightGreen,
              period: const Duration(milliseconds: 5000),
              child: Text(
                "${widget.plants.price} SR",
                style: const TextStyle(
                    color: GColors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: -5,
            child: Image.network(
              widget.plants.imgUrl!,
              width: MediaQuery.of(context).size.width - 180,
              height: MediaQuery.of(context).size.height - 550,
              errorBuilder: (context, error, stackTrace) => const Padding(
                padding: EdgeInsets.only(right: 60.0, top: 50),
                child: Icon(
                  Icons.error_outline,
                  size: 90,
                ),
              ),
            ),
          ),
          Positioned(
            top: 90,
            left: 35,
            child: SizedBox(
              width: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.plants.name!,
                    maxLines: 2,
                    style: const TextStyle(
                      fontSize: 25,
                      fontFamily: 'Lobster',
                    ),
                  ),
                  Text(
                    "${widget.plants.type!} plant",
                    style: const TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  GSpaces.gV16,
                  NumberOfItem(plants: widget.plants),
                  GSpaces.gV8,
                  CartButton(plants: widget.plants)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
