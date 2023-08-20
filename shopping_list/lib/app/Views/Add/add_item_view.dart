import 'package:flutter/material.dart';
import 'package:shopping_list/app/utils/constants/colors.dart';
import 'widgets/add_item_form.dart';

class AddItemBottomSheet extends StatefulWidget {
  @override
  _AddItemBottomSheetState createState() => _AddItemBottomSheetState();
}

class _AddItemBottomSheetState extends State<AddItemBottomSheet> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _categoryController = TextEditingController();
  final TextEditingController _quantityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: AddItemForm(
              nameController: _nameController,
              categoryController: _categoryController,
              quantityController: _quantityController,
            ),
          ),
        ],
      ),
    );
  }
}
