import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../Models/shopping_list_item_model.dart';
import '../../../core/bloc/shoppingListBloc/shopping_list_bloc.dart';
import '../../../utils/shared/custom_buttons.dart';
import '../../../utils/shared/custom_text_field.dart';
import '../../../utils/shared/spacing.dart';

class AddItemForm extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController categoryController;
  final TextEditingController quantityController;

  AddItemForm({
    required this.nameController,
    required this.categoryController,
    required this.quantityController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomTextField(
          title: 'Item Name',
          hint: 'Enter Item Name',
          controller: nameController,
          prefixIcon: Icons.label_outline,
        ),
        ResponsiveSpacing.height(context, small),
        CustomTextField(
          title: 'Category',
          hint: 'Enter Category',
          controller: categoryController,
          prefixIcon: Icons.category_outlined,
        ),
        ResponsiveSpacing.height(context, small),
        CustomTextField(
            title: 'Quantity',
            hint: 'Enter Quantity',
            controller: quantityController,
            prefixIcon: Icons.numbers),
        AuthButton(
          buttonText: 'Add Item',
          onPressed: () {
            if (nameController.text.isNotEmpty &&
                categoryController.text.isNotEmpty &&
                quantityController.text.isNotEmpty) {
              BlocProvider.of<ShoppingListBloc>(context).add(
                AddShoppingListItem(
                  ShoppingListItem(
                    name: nameController.text,
                    category: categoryController.text,
                    quantity: quantityController.text,
                    imagePath: '',
                  ),
                ),
              );
              Navigator.of(context).pop();
            }
          },
        ),
      ],
    );
  }
}
