import 'package:flutter/material.dart';
import 'package:ghars/constants/colors.dart';
import 'package:ghars/constants/spaces.dart';
import '../main.dart';
import '../model/plants_model.dart';
import '../widgets/card_widgets/flip_card.dart';
import '../widgets/search_filed.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key, this.plants});
  final Plants? plants;
  final TextEditingController searchField = TextEditingController();

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
            SearchField(),
            GSpaces.gV16,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        GColors.lightDarkGreen),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                  ),
                  child: const Text(
                    "Indoor Plants",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        GColors.lightDarkGreen),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                  ),
                  child: const Text(
                    "Outdoor Plants",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            GSpaces.gV8,
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listOfPlants.length,
                itemBuilder: ((context, index) {
                  return FlipedCard(
                    index: index,
                    plants: widget.plants,
                  );
                }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "About Ghars",
                    style: TextStyle(
                      fontFamily: 'Lobster',
                      fontSize: 30,
                    ),
                  ),
                  GSpaces.gV8,
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "A store that specializes in indoor and outdoor ornamental plants, which are carefully prepared to last. We are also keen to make your experience in purchasing plants and their supplies through the Ghars Store an easy and distinctive experience.",
                      style: TextStyle(
                        fontSize: 18,
                        height: 1.2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
