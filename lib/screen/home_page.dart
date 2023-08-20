import 'package:flutter/material.dart';
import 'package:shop_app/componts/card_widget.dart';
import 'package:shop_app/componts/navigtionbar.dart';
import 'package:shop_app/main.dart';
import 'package:shop_app/models/proudct_model.dart';
import 'package:shop_app/screen/add_page.dart';
import 'package:styled_text/styled_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, this.product});

  final Product? product;

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const ButtomWedgit(),
          backgroundColor: const Color.fromARGB(255, 171, 165, 172),
        appBar: AppBar(
          title: StyledText(
            text: 'Shop <m/>',
            tags: {'m': StyledTextIconTag(Icons.shopping_bag)},
          ),
          backgroundColor: Colors.cyan,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AddPage(),
                      ));
                },
                icon: const Icon(Icons.add))
          ],
          
        ),
        body: ListView.builder(
            itemCount: listOfProduct!.length,
            itemBuilder: (context, index) {
              return InkWell(
                onLongPress: () {
                  listOfProduct!.removeAt(index);
                  setState(() {});
                },
                child: CardWidget(
                  product: listOfProduct![index],
                  newFunction: () {
                    setState(() {});
                  },
                ),
              );
            }),
       
    );
    
  }
}
