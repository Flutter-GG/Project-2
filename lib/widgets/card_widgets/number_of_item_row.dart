import 'package:flutter/material.dart';
import '../../functions/quantity_func.dart';
import '../../model/plants_model.dart';

// ignore: must_be_immutable
class NumberOfItem extends StatefulWidget {
  const NumberOfItem({
    super.key,
    this.buttonSize = 20,
    this.numberSize = 22,
    required this.plants,
  });

  final double buttonSize;
  final double numberSize;
  final Plants plants;

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
              decreaseQuantity(widget.plants);
              setState(() {});
            },
            icon: Icon(
              Icons.remove,
              size: widget.buttonSize,
            )),
        Text(
          "${widget.plants.quantity}",
          style: TextStyle(fontSize: widget.numberSize),
        ), // Number will be here
        IconButton(
          onPressed: () {
            increaseQuantity(widget.plants);
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
