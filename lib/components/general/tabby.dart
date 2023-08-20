import 'package:flutter/material.dart';
import 'package:project2/constants/constants.dart';
import 'package:project2/models/Product_model.dart';

class Tabby extends StatelessWidget {
  const Tabby({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // padding: const EdgeInsets.all(10),
      height: AppLayout.getSize(context).height*.15,
      width: AppLayout.getSize(context).width,
      // color: Colors.pink.shade100,
      child: Row(
        children: [
          Image.network(
            "https://telr.com/ae-ar/wp-content/uploads/sites/8/2023/08/tabby-Telr-buy-now-pay-later.png",
            height: 35,
            width: 100,
          ),
          width16,
          Expanded(
            child: RichText(
              text: TextSpan(
                style: const TextStyle(
                  fontSize: 18.0,
                  color: Colors.black,
                ),
                children: [
                  const TextSpan(
                    text: "Divide it into 4 interest-free payments of ",
                  ),
                  TextSpan(
                    text: " ${(product.price! / 4).toStringAsFixed(2)} S.R",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
