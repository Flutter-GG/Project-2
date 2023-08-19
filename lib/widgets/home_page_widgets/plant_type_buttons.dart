import 'package:flutter/material.dart';
import 'package:ghars/constants/colors.dart';
import 'package:ghars/data_to_be_accessed.dart';

class PlantTypeButtons extends StatefulWidget {
  const PlantTypeButtons({
    super.key,
  });

  @override
  State<PlantTypeButtons> createState() => _PlantTypeButtonsState();
}

class _PlantTypeButtonsState extends State<PlantTypeButtons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () {
            isIndoor = !isIndoor;
            setState(() {});
            // context.findAncestorStateOfType<CartPageState>()!.setState(() {});
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                isIndoor ? GColors.green : GColors.lightDarkGreen),
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
          onPressed: () {
            isOutdoor = !isOutdoor;
            setState(() {});
            // context.findAncestorStateOfType<CartPageState>()!.setState(() {});
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                isOutdoor ? GColors.green : GColors.lightDarkGreen),
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
