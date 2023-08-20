import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project2/screen/home_screen.dart';
import 'package:project2/screen/product_screen.dart';
import 'package:project2/utilities/extension/navigator.dart';
import 'package:project2/utilities/ui_classes/spaces.dart';
import 'package:project2/widget/cartcard_widget.dart';
import 'package:project2/widget/customtext_widget.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:shimmer/shimmer.dart';
import 'package:glass/glass.dart';

import '../main.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  var _currentIndex = 1;
  var updated = false;
  var couponCode = "Wejdan";
  TextEditingController? controllerCode = TextEditingController();

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
          text: "Shopping cart",
          fontWeight: FontWeight.w400,
          fontSize: 30,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                size: 25,
                FontAwesomeIcons.cartShopping,
                color: Colors.black,
              ))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: cartListProducts.length,
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: () {
                        context.push(
                            screen: ProductScreen(
                                products: cartListProducts[index]));
                      },
                      onLongPress: () {
                        cartListProducts.remove(cartListProducts[index]);
                        setState(() {});
                      },
                      child: CartCardWidget(
                        products: cartListProducts[index],
                      ));
                }),
          ),
          Row(
            children: [
              Spacer(),
              CustomTextWidget(
                text: "  Total is        ",
                fontSize: 25,
              ),
              Shimmer.fromColors(
                  baseColor: Colors.orange,
                  highlightColor: Colors.black,
                  child: CustomTextWidget(
                    text: "${totalResult().toString()} \$",
                    fontSize: 35,
                  ))
            ],
          ),
          Row(
            children: [
              Spacer(),
              CustomTextWidget(
                text: "  Total after discounts is        ",
                fontSize: 25,
              ),
              Shimmer.fromColors(
                baseColor: Colors.orange,
                highlightColor: Colors.black,
                child: CustomTextWidget(
                  text: updated
                      ? "${updateResult().toString()} \$"
                      : "${totalResult().toString()} \$",
                  fontSize: 35,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 200,
                  height: 50,
                  child: TextField(
                    controller: controllerCode,
                    decoration: InputDecoration(
                      hintText: " Enter copon code",
                      hintStyle: GoogleFonts.teko(),
                      filled: true,
                      fillColor: Colors.grey[100],
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 0, color: Colors.white),
                          borderRadius: BorderRadius.circular(50)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 0, color: Colors.white),
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ),
                ),
                Spaces.spaceW8,
                ElevatedButton(
                  onPressed: () {
                    if (controllerCode!.text == couponCode) {
                      updated = true;
                      updateResult();
                      setState(() {});
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      backgroundColor: Colors.orange),
                  child: const Icon(FontAwesomeIcons.check),
                )
              ],
            ),
          ),
          ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => Center(
                      child: CustomTextWidget(
                    text: "Your yumy fruit in the way!",
                  )).asGlass(),
                );
                setState(() {});
              },
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
                backgroundColor: Colors.orange,
                fixedSize: Size(MediaQuery.of(context).size.width - 50, 50),
              ),
              child: CustomTextWidget(
                text: "Checkout",
                fontSize: 25,
                color: Colors.white,
              )),
        ],
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
              //TODO
              break;
            default:
          }
        },
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

totalResult() {
  double total = 0;
  for (var element in cartListProducts) {
    total = total + (element.amount! * element.prica!);
  }
  return total;
}

updateResult() {
  double total = totalResult();
  total = total - (total * 0.15);
  return total;
}
