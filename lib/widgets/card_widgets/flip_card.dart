import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:ghars/widgets/card_widgets/item_card.dart';

import '../../main.dart';
import '../../model/plants_model.dart';
import '../back_card.dart';

class CardFlip extends StatefulWidget {
  const CardFlip({super.key, this.plants, required this.index});

  final Plants? plants;
  final int index;

  @override
  State<CardFlip> createState() => _CardFlipState();
}

class _CardFlipState extends State<CardFlip> {
  @override
  Widget build(BuildContext context) {
    return FlipCard(
      fill: Fill
          .fillBack, // Fill the back side of the card to make in the same size as the front.
      direction: FlipDirection.HORIZONTAL, // default
      side: CardSide.FRONT, // The side to initially display.
      front: ItemCard(plants: listOfPlants[widget.index]),
      back: BackCrd(plants: listOfPlants[widget.index]),
    );
  }
}
