import 'package:flutter/material.dart';
import 'package:project2/components/text/text_widget.dart';
import 'package:project2/constants/app_styles.dart';
import 'package:project2/screens/products_screen.dart';


String? categoryType;

class categoriesButton extends StatefulWidget {
  const categoriesButton({super.key});

  @override
  State<categoriesButton> createState() => _categoriesButtonState();
}

class _categoriesButtonState extends State<categoriesButton> {
  final List<String> choice = [
    'All',
    'men',
    'women',
    'kids',
  ];
  @override
  Widget build(BuildContext context) {
    categoryType ??= "All";
    bool isNull = (categoryType == null);
    return Wrap(
      spacing: 10.0,
      children: List<Widget>.generate(
        choice.length,
        (index) {
          return ChoiceChip(
            labelPadding:
                const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            padding: const EdgeInsets.symmetric(horizontal: 12),
            selectedColor: primaryColor,
            label: TextWidget(
              text: isNull ? "All" : choice[index],
              size: 14,
            ),
            selected: categoryType == choice[index],

            onSelected: (selected) {
              if (selected) {
                setState(() {
                context.findAncestorStateOfType<ProductsScreenState>()?.setState(() {}); // TODO have chack
                  categoryType = choice[index];
                });
              }else{
                categoryType = "All";
                setState(() {
                  
                });
              }
            },
          );
        },
      ),
    );
  }
}
