import 'package:flutter/material.dart';
import '../Models/sell_model.dart';
import '../Screens/item_screen.dart';
import '../constants/spacings.dart';

class WappItemCard extends StatelessWidget {
  const WappItemCard({
    Key? key,
    required this.sellDataModel,
  }) : super(key: key);

  final SellDataModel sellDataModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ItemScreen(
            sellDataModel: sellDataModel,
          ),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[200],
        ),
        width: MediaQuery.of(context).size.width - 30,
        height: MediaQuery.of(context).size.height / 7,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 130,
              height: 90,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    sellDataModel.itemImage.toString(),
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Text(
                sellDataModel.title.toString(),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Text(
                sellDataModel.price.toString(),
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
