import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/bloc/cartListBloc/bloc/cart_list_bloc_bloc.dart';
import '../../../utils/constants/colors.dart';
import '../../Update/update_view.dart';
import '../../../Models/shopping_list_item_model.dart'; // Ensure you import the model

class ShoppingItemCard extends StatelessWidget {
  final ShoppingListItem item;
  final int index;

  ShoppingItemCard({required this.item, required this.index});

  @override
  Widget build(BuildContext context) {
    String displayImagePath =
        item.imagePath.isEmpty ? 'assets/imgs/grocery.png' : item.imagePath;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 8.0,
      margin: EdgeInsets.all(12.0),
      color: backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              width: 180, 
              height: 150.0,

              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  displayImagePath,
                  fit: BoxFit.fill, 
                ),
              ),
            ),
            SizedBox(height: 12.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item.name,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: textColor,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.edit, color: purpleColor),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            UpdateItemView(item: item, index: index),
                      ),
                    );
                  },
                ),
              ],
            ),
            SizedBox(height: 12.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Category: ${item.category}',
                  style: TextStyle(
                      color: textColor, fontSize: 16.0), 
                ),
                Text(
                  'Quantity: ${item.quantity}',
                  style: TextStyle(
                      color: textColor, fontSize: 16.0), 
                ),
                IconButton(
                  icon: Icon(Icons.add_shopping_cart, color: purpleColor),
                  onPressed: () {
                    BlocProvider.of<CartListBloc>(context)
                        .add(AddItemToCart(item.name));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
