import 'package:flower_store/component/category.dart';
import 'package:flower_store/component/showSucsessDilog.dart';
import 'package:flower_store/wedgit/custumAppBar.dart';
import 'package:flower_store/extenstions.dart/constant.dart';
import 'package:flower_store/component/produt_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/cart_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // using brivider library
    return Consumer<CartModel>(builder: (context, cart, child) {
      return Scaffold(
        appBar: custumAppBar(context, cart),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            //txt
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: Text(
                'Welcome,',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 4),

            //txt
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: Text(
                "we hope you enjoy shopping with us :) ",
                style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
              ),
            ),
            const SizedBox(height: kDefaultPaddin),

            // categories -> horizontal listview
            Categories(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: Text(
                "Items",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Expanded(
              child: Consumer<CartModel>(
                builder: (context, value, child) {
                  return GridView.builder(
                    padding: const EdgeInsets.all(12),
                    itemCount: value.shopItems.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 1.2,
                    ),
                    itemBuilder: (context, index) {
                      return ProdutItem(
                          itemName: value.shopItems[index][0],
                          itemPrice: value.shopItems[index][1],
                          imagePath: value.shopItems[index][2],
                          color: value.shopItems[index][3],
                          onPressed: () {
                            Provider.of<CartModel>(context, listen: false)
                                .addItemToCart(index);
                            showSucsessDilog(context);
                          });
                    },
                  );
                },
              ),
            ),
          ],
        ),
      );
    });
  }
}
