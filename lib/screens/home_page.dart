import 'package:flutter/material.dart';
import '../main.dart';
import '../model/plants_model.dart';
import '../widgets/card_widgets/item_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, this.plants});
  final Plants? plants;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: listOfPlants.length,
      itemBuilder: ((context, index) {
        return ItemCard(
          plants: listOfPlants[index],
        );
      }),
    );
  }
}
