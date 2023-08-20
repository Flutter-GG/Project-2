import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project2/model/products.dart';
import 'package:project2/screen/cart_screen.dart';
import 'package:project2/screen/product_screen.dart';
import 'package:project2/utilities/extension/navigator.dart';
import 'package:project2/utilities/ui_classes/spaces.dart';
import 'package:project2/widget/card_widget.dart';
import 'package:project2/widget/customtext_widget.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:shimmer/shimmer.dart';

import '../main.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  HomeScreen({super.key, required this.list});

  List<Products> list = [];

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

TextEditingController? controllerSearched = TextEditingController();
bool isSubmitted = false;

class _HomeScreenState extends State<HomeScreen> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xff424242),
        elevation: 0,
        title: CustomTextWidget(
          text: "Home",
          fontWeight: FontWeight.w400,
          fontSize: 30,
        ),
        actions: [
          IconButton(
              onPressed: () {
                context.push(screen: const CartScreen());
              },
              icon: const Icon(
                size: 25,
                FontAwesomeIcons.cartShopping,
                color: Colors.black,
              ))
        ],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Shimmer.fromColors(
                baseColor: Colors.orange,
                highlightColor: Colors.black,
                child: CustomTextWidget(
                  text: "Hey Wejdan!",
                  fontSize: 35,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomTextWidget(
                text: "Find any thing you want it..",
                fontWeight: FontWeight.w400,
                fontSize: 25,
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 100,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          prefix: const Padding(
                            padding: EdgeInsets.only(top: 30),
                            child: Icon(Icons.search, color: Colors.black),
                          ),
                          hintText: "Search",
                          hintStyle: GoogleFonts.teko(),
                          filled: true,
                          fillColor: Colors.grey[100],
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 0, color: Colors.white),
                              borderRadius: BorderRadius.circular(50)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 0, color: Colors.white),
                              borderRadius: BorderRadius.circular(50)),
                        ),
                      ),
                    ),
                    Spaces.spaceW8,
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            backgroundColor: Colors.orange),
                        child: const Icon(FontAwesomeIcons.sliders)),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        bottom: 8.0, top: 8.0, right: 0, left: 60),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                print(listFruit.length);
                                context.push(
                                    screen: HomeScreen(
                                  list: listFruit,
                                ));
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: const StadiumBorder(),
                                  fixedSize: const Size(120, 40),
                                  backgroundColor: Colors.orange),
                              child: CustomTextWidget(
                                text: "Fruit",
                                color: Colors.white,
                              )),
                          Spaces.spaceW24,
                          ElevatedButton(
                              onPressed: () {
                                context.push(
                                    screen: HomeScreen(
                                  list: listSalad,
                                ));
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: const StadiumBorder(),
                                  fixedSize: const Size(120, 40),
                                  backgroundColor: Colors.orange),
                              child: CustomTextWidget(
                                text: "Salad",
                                color: Colors.white,
                              )),
                        ]),
                  )),
            ),
            Expanded(
              flex: 10,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 380,
                      childAspectRatio: 1,
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 0),
                  itemCount: widget.list.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {
                          context.push(
                              screen:
                                  ProductScreen(products: widget.list[index]));
                        },
                        onLongPress: () {
                          listProducts.remove(widget.list[index]);
                          setState(() {});
                        },
                        child: CardWidget(
                          products: widget.list[index],
                        ));
                  }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (currentIndex) {
          switch (currentIndex) {
            case 0:
              context.push(
                  screen: HomeScreen(
                list: listProducts,
              ));
              break;
            case 1:
              context.push(screen: const CartScreen());
              break;
            case 2:
              // TODO
              break;
            default:
          }
        },
        //  (i) => setState(() => _currentIndex = i),
        items: [
          SalomonBottomBarItem(
            icon: const Icon(Icons.home),
            title: CustomTextWidget(text: "Home"),
            selectedColor: Colors.orange,
          ),
          SalomonBottomBarItem(
            icon: const Icon(
              FontAwesomeIcons.cartShopping,
            ),
            title: CustomTextWidget(text: "Shopping Cart"),
            selectedColor: Colors.orange,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.person),
            title: CustomTextWidget(text: "Profile"),
            selectedColor: Colors.orange,
          ),
        ],
      ),
    );
  }
}
