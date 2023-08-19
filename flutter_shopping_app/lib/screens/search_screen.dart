import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/components/custom_app_bar.dart';
import 'package:flutter_shopping_app/components/custom_products.dart';
import 'package:flutter_shopping_app/data/global_var.dart';

/* this is for search, form the title and the category to filter it */
class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(text: 'Search'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            onSubmitted: (value) {
              setState(() {
                search.clear();
              });

              for (var product in products) {
                if (product.title
                            ?.toLowerCase()
                            .contains(value.toLowerCase()) ==
                        true ||
                    product.category
                            ?.toLowerCase()
                            .contains(value.toLowerCase()) ==
                        true) {
                  setState(() {
                    search.add(product);
                  });
                }
              }
            },
          ),
          Expanded(
              child: CustomProductsInformation(
            products: search,
          )),
        ],
      ),
    );
  }
}
