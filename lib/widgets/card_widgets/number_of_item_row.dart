import 'package:flutter/material.dart';

int counter = 1;

// ignore: must_be_immutable
class NumberOfItem extends StatefulWidget {
  const NumberOfItem({
    super.key,
    this.buttonSize = 20,
    this.numberSize = 22,
  });
  final double buttonSize;
  final double numberSize;
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
            icon: Icon(
              Icons.remove,
              size: widget.buttonSize,
            )),
        Text(
          "$counter",
          style: TextStyle(fontSize: widget.numberSize),
        ), // Number will be here
        IconButton(
          onPressed: () {
            counter++;
            setState(() {});
          },
          icon: Icon(
            Icons.add,
            size: widget.buttonSize,
          ),
        ),
      ],
    );
  }
}
