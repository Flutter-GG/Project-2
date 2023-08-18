import 'package:flutter/material.dart';
import '../constants/colors.dart';

class PlantTypeButtons extends StatelessWidget {
  const PlantTypeButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(GColors.lightDarkGreen),
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
            backgroundColor:
                MaterialStateProperty.all<Color>(GColors.lightDarkGreen),
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
    );
  }
}
