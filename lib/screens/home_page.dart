import 'package:flutter/material.dart';
import 'package:ghars/constants/spaces.dart';
import 'package:ghars/widgets/home_page_widgets/about_ghars_section.dart';
import 'package:ghars/widgets/home_page_widgets/plant_type_buttons.dart';
import 'package:ghars/widgets/home_page_widgets/search_filed.dart';
import '../functions/search_func.dart';
import '../model/plants_model.dart';
import '../widgets/card_widgets/flip_card.dart';

//This is the home page screen, which is containe the plants cards and a brief about the app

class HomePage extends StatefulWidget {
  const HomePage({super.key, this.plants});
  final Plants? plants;

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            GSpaces.gV24,
            const SearchField(), //Search field widget
            GSpaces.gV16,
            const PlantTypeButtons(), //Plants filtering buttons widget
            GSpaces.gV8,
            Expanded(
              //The list of cards "Plants card"
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
              child: AboutGharsSection(), //A brife about Ghars app widget
            ),
          ],
        ),
      ),
    );
  }
}
