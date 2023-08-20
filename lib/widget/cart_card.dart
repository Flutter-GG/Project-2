import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:project_2/constant/colors.dart';
import 'package:project_2/constant/extinsions.dart';
import 'package:project_2/main.dart';
import 'package:project_2/models/product_model.dart';
import 'package:project_2/screens/cart.dart';
import 'package:project_2/screens/confirem_order.dart';
import 'package:project_2/screens/detailes.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:equatable/equatable.dart';

import 'package:zoom_tap_animation/zoom_tap_animation.dart';

bool _hasBeenPressed = false;
int total = 0;
int discount = 10;
String promoCode = "first";

class CartWidget extends StatelessWidget {
  CartWidget({
    super.key,
    required this.product,
  });
  int total = 0;
int discount = 10;
String promoCode = "first";
  final TextEditingController controllerPromoCode = TextEditingController();

  final Products product;

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: () => context.pushPage(
          screen: Show(
        product: product,
      )),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          children: [
            SlidableAction(
              onPressed: (context) {
                productslist.remove(product);
                context.findAncestorStateOfType<CartState>()?.setState(() {});
              },
              backgroundColor: WColors.orange,
              foregroundColor: WColors.white,
              icon: Icons.delete,
              label: 'Delete',
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                TextField(
                  controller: controllerPromoCode,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(width: 4, color: WColors.snow),
                      ),
                      hintText: "promo code"),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: WColors.darkRed,
                      shape: StadiumBorder(),
                      fixedSize:
                          Size(MediaQuery.of(context).size.width - 80, 50),
                    ),
                    onPressed: () {
                      if (controllerPromoCode.text == promoCode) {
                        total -= discount;
                      } else {
                        AwesomeDialog(
                          context: context,
                          dialogType: DialogType.error,
                          animType: AnimType.rightSlide,
                          title: 'Warning',
                          desc: 'Please complete all fields',
                        ).show();
                      }
                    },
                    child: Text("Procced Order")),
              ],
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'total',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                            '\$${productsList!.isNotEmpty ? productsList!.map<int>((m) => m.price! * m.stock!).reduce((value, element) => value + element).toStringAsFixed(2) : 0}')
                      ],
                    )
                  ],
                ),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: WColors.darkRed,
                  shape: StadiumBorder(),
                  fixedSize: Size(MediaQuery.of(context).size.width - 50, 50),
                ),
                onPressed: () {
                  if (productsList!.isNotEmpty) {
                    context.pushPage(screen: ConfiremOrder());
                  } else {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.error,
                      animType: AnimType.rightSlide,
                      title: 'Warning',
                      desc: 'Please complete all fields',
                    ).show();
                  }
                },
                child: Text("Procced Order"))
          ],
        ),
      ),
    );
  }
}
