import 'package:flutter/material.dart';
import 'package:project_2/Models/sell_model.dart';
import 'package:project_2/Widgets/wapp_item_card.dart';
import 'package:project_2/constants/extensions.dart';
import 'package:project_2/main.dart';

List<SellDataModel> tempProducts = [];

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenViewState();
}

class _SearchScreenViewState extends State<SearchScreen> {
  void initState() {
    super.initState();
    tempProducts = SelllistData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Search",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: context.getWidth - 50,
              height: context.getHeight - 800,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.grey.withOpacity(0.4),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  onChanged: (text) => searchBar(text),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search",
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return WappItemCard(
                    sellDataModel: tempProducts[index],
                  );
                },
                itemCount: tempProducts.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

  searchBar(String searchText) {
    searchText = searchText.toLowerCase();
    if (searchText.isEmpty) {
      setState(() {
        tempProducts = SelllistData;
      });
    } else {
      List<SellDataModel> filteredProducts = [];
      for (final product in SelllistData) {
        if (product.title.toString().contains(searchText)) {
          filteredProducts.add(product);
        }
      }
      setState(() {
        tempProducts = filteredProducts;
      });
    }
  }
}
