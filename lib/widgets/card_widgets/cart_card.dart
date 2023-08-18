import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/spaces.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width - 10,
      height: MediaQuery.of(context).size.height * 0.14,
      decoration: const BoxDecoration(
        color: GColors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Sweet Orang Tree", //Related to cart list
                maxLines: 2,
                style: TextStyle(
                  fontFamily: 'Lobster',
                  fontSize: 30,
                ),
              ),
              GSpaces.gV16,
              Row(
                children: [
                  const Text("2 X 500"), //Related to counter
                  GSpaces.gH16,
                  const Text("Total: 1000"), // Realted to counter
                ],
              ),
            ],
          ),
          // GSpaces.gH24,
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.remove)),
                  const Text(
                    "2", //Number related to counter
                    style: TextStyle(fontSize: 20),
                  ),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
