import 'package:flutter/material.dart';
import 'package:ghars/constants/spaces.dart';
import '../functions/search_func.dart';
import '../model/plants_model.dart';
import '../widgets/about_ghars_section.dart';
import '../widgets/card_widgets/flip_card.dart';
import '../widgets/plant_type_buttons.dart';
import '../widgets/search_filed.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({super.key, this.plants});
  final Plants? plants;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            GSpaces.gV24,
            const SearchField(),
            GSpaces.gV16,
            const PlantTypeButtons(), //Plants filtering buttons widget
            GSpaces.gV8,
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: displayedList().length,
                itemBuilder: ((context, index) {
                  //Return the Fliped card
                  return FlipedCard(
                    index: index,
                    plants: widget.plants,
                  );
                }),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: AboutGharsSection(), //About Ghars app "Text widget"
            ),
          ],
        ),
      ),
    );
  }
}


