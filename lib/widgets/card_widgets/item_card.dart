import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import '../../constants/colors.dart';
import '../../constants/spaces.dart';
import '../../model/plants_model.dart';
import 'cart_button.dart';
import 'number_of_item_row.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.plants,
  });

  final Plants plants;

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
                "${plants.price} SR",
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
              plants.imgUrl!,
              width: MediaQuery.of(context).size.width - 180,
              height: MediaQuery.of(context).size.height - 550,
              errorBuilder: (context, error, stackTrace) => const Icon(
                Icons.error,
                size: 90,
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
                    plants.name!,
                    maxLines: 2,
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "${plants.type!} plant",
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  GSpaces.gV16,
                  const NumberOfItem(),
                  GSpaces.gV8,
                  const CartButton()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
