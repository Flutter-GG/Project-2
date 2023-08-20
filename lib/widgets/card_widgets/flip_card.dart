import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:ghars/widgets/card_widgets/item_card.dart';
import 'package:ghars/widgets/home_page_widgets/back_card.dart';
import '../../functions/search_func.dart';
import '../../model/plants_model.dart';

class FlipedCard extends StatefulWidget {
  const FlipedCard({super.key, this.plants, required this.index});

  final Plants? plants;
  final int index;

  @override
  State<FlipedCard> createState() => FlipedCardState();
}

class FlipedCardState extends State<FlipedCard> {
  @override
  Widget build(BuildContext context) {
    return FlipCard(
      fill: Fill
          .none, // Fill the back side of the card to make in the same size as the front.
      // direction: FlipDirection.HORIZONTAL, // default
      side: CardSide.FRONT, // The side to initially display.
      front: ItemCard(plants: displayedList()[widget.index]),
      back: BackCrd(plants: displayedList()[widget.index]),
    );
  }
}
