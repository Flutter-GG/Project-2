import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Models/shopping_list_item_model.dart';
import '../../core/bloc/shoppingListBloc/shopping_list_bloc.dart';
import '../Home/home_view.dart';

class AddItemView extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _categoryController = TextEditingController();
  final TextEditingController _quantityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Item')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Item Name'),
            ),
            TextField(
              controller: _categoryController,
              decoration: InputDecoration(labelText: 'Category'),
            ),
            TextField(
              controller: _quantityController,
              decoration: InputDecoration(labelText: 'Quantity'),
            ),
            ElevatedButton(
              onPressed: () {
                if (_nameController.text.isNotEmpty &&
                    _categoryController.text.isNotEmpty &&
                    _quantityController.text.isNotEmpty) {
                  BlocProvider.of<ShoppingListBloc>(context).add(
                    AddShoppingListItem(ShoppingListItem(
                      name: _nameController.text,
                      category: _categoryController.text,
                      quantity: _quantityController.text,
                      imagePath: '', // assuming quantity is an int
                    )),
                  );
             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeView()));

                }
              },
              child: Text('Add Item'),
            ),
          ],
        ),
      ),
    );
  }
}
