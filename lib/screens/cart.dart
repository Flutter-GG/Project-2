import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:project_2/card.dart';
import 'package:project_2/constant/colors.dart';
import 'package:project_2/constant/extinsions.dart';
import 'package:project_2/constant/spaces.dart';
import 'package:project_2/models/product_model.dart';
import 'package:project_2/screens/confirem_order.dart';
import 'package:project_2/widget/promo_code_functions.dart';

List<Products>? productsList = [];
String promoCode = "first";

class Cart extends StatefulWidget {
  Cart({
    super.key,
  });
  final TextEditingController? controllerPromoCode = TextEditingController();

  @override
  State<Cart> createState() => CartState();
}

class CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 500,
          child: Slidable(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return SizedBox(
                    height: 250,
                    child: InkWell(
                        child: CardWidget(
                          product: productsList![index],
                        ),
                        onLongPress: () {
                          productsList!.removeAt(index);
                          setState(() {});
                        }));
              },
              itemCount: productsList!.length,
            ),
          ),
        ),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                TextField(
                  controller: widget.controllerPromoCode,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            const BorderSide(width: 4, color: WColors.snow),
                      ),
                      hintText: "promo code"),
                ),
                Space.spaceH8,
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: WColors.darkRed,
                      shape: const StadiumBorder(),
                      fixedSize:
                          Size(MediaQuery.of(context).size.width - 80, 50),
                    ),
                    onPressed: () {
                      if (widget.controllerPromoCode!.text == promoCode) {
                        totalPrice();
                        setState(() {});
                      } else {
                        AwesomeDialog(
                          context: context,
                          dialogType: DialogType.error,
                          animType: AnimType.rightSlide,
                          title: 'Warning',
                          desc: 'Invailed Promo code',
                        ).show();
                      }
                    },
                    child: const Text("Apply")),
                Space.spaceH16,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'total',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                        '\$${productsList!.isNotEmpty ? productsList!.map<int>((m) => m.price!).reduce((value, element) => value + element).toStringAsFixed(2) : 0}'),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: WColors.orange,
                    shape: const StadiumBorder(),
                    fixedSize: Size(MediaQuery.of(context).size.width - 80, 50),
                  ),
                  onPressed: () {
                    context.pushPage(
                      screen: const ConfiremOrder(),
                    );
                  },
                  child: const Text("procced order"),
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
