import 'package:flutter/material.dart';
import 'package:ghars/constants/colors.dart';
import 'package:ghars/model/plants_model.dart';
import 'package:ghars/widgets/card_widgets/cart_button.dart';
import 'package:ghars/widgets/card_widgets/number_of_item_row.dart';
import 'package:shimmer/shimmer.dart';


class BackCrd extends StatefulWidget {
  const BackCrd({super.key, required this.plants});

  final Plants plants;

  @override
  State<BackCrd> createState() => _BackCrdState();
}

class _BackCrdState extends State<BackCrd> {
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
                color: GColors.lightMint,
                borderRadius: BorderRadius.circular(30),
              ),
              width: MediaQuery.sizeOf(context).width - 100,
              height: MediaQuery.sizeOf(context).height - 450,
              child: const Text(""),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 5,
            child: Image.network(
              widget.plants.imgUrl!,
              width: MediaQuery.of(context).size.width - 270,
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
            top: 20,
            left: 35,
            child: SizedBox(
              width: 250,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.plants.name!,
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 25,
                      fontFamily: 'Lobster',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      widget.plants.about!,
                      style: const TextStyle(
                        fontSize: 16,
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 30,
            child: Column(
              children: [
                Shimmer.fromColors(
                  baseColor: GColors.black,
                  highlightColor: GColors.lightMint,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 20.0,
                    ),
                    child: Text(
                      "${widget.plants.price} SR",
                      style: const TextStyle(
                        color: GColors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
                NumberOfItem(
                  buttonSize: 15,
                  numberSize: 20,
                  plants: widget.plants,
                ),
                CartButton(
                  buttonSize: 50,
                  leftMarg: 0,
                  cartIconColor: GColors.darkGreen,
                  plants: widget.plants,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
