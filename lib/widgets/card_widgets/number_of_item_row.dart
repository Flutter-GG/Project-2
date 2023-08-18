import 'package:flutter/material.dart';

int counter = 1;

// ignore: must_be_immutable
class NumberOfItem extends StatefulWidget {
  const NumberOfItem({
    super.key,
  });

  @override
  State<NumberOfItem> createState() => _NumberOfItemState();
}

class _NumberOfItemState extends State<NumberOfItem> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              counter != 1 ? counter-- : null;
              setState(() {});
            },
            icon: const Icon(
              Icons.remove,
              size: 20,
            )),
        Text(
          "$counter",
          style: const TextStyle(fontSize: 22),
        ), // Number will be here
        IconButton(
          onPressed: () {
            counter++;
            setState(() {});
          },
          icon: const Icon(
            Icons.add,
            size: 20,
          ),
        ),
      ],
    );
  }
}
