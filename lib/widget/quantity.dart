import 'package:flutter/material.dart';

class AddButton extends StatefulWidget {
  const AddButton({Key? key}) : super(key: key);

  @override
  State<AddButton> createState() => _AddButtonState();
}

class _AddButtonState extends State<AddButton> {
  int up = 1;

  void increment() {
    setState(() {
      if (up >= 1 && up < 10) {
        up++;
      }
    });
  }

  void decrement() {
    setState(() {
      if (up > 1) {
        up--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            increment();
          },
          icon: Icon(Icons.add),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 20,
            color: Colors.white,
            child: Text('$up'),
          ),
        ),
        IconButton(
          onPressed: () {
            decrement();
          },
          icon: Icon(Icons.remove),
        )
      ],
    );
  }
}
