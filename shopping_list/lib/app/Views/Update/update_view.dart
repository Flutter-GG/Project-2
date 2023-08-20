import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_list/app/utils/constants/colors.dart';
import '../../Models/shopping_list_item_model.dart';
import '../../core/bloc/shoppingListBloc/shopping_list_bloc.dart';
import '../../utils/shared/custom_buttons.dart';
import '../Home/home_view.dart';

class UpdateItemView extends StatefulWidget {
  final ShoppingListItem item;
  final int index;

  const UpdateItemView({Key? key, required this.item, required this.index})
      : super(key: key);

  @override
  _UpdateItemViewState createState() => _UpdateItemViewState();
}

class _UpdateItemViewState extends State<UpdateItemView> {
  late TextEditingController _nameController;
  late TextEditingController _categoryController;
  late TextEditingController _quantityController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.item.name);
    _categoryController = TextEditingController(text: widget.item.category);
    _quantityController =
        TextEditingController(text: widget.item.quantity.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
      ),
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
            AuthButton(
              buttonText: "Update",
              onPressed: () {
                if (_nameController.text.isNotEmpty &&
                    _categoryController.text.isNotEmpty &&
                    _quantityController.text.isNotEmpty) {
                  BlocProvider.of<ShoppingListBloc>(context).add(
                    UpdateShoppingListItem(
                      widget.index,
                      ShoppingListItem(
                        name: _nameController.text,
                        category: _categoryController.text,
                        quantity: _quantityController.text,
                        imagePath: '',
                      ),
                    ),
                  );
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomeView()));
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
