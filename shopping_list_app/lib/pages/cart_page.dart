import 'package:flutter/material.dart';
import 'package:shopping_list_app/main.dart';
import 'package:shopping_list_app/model/items_data.dart';
import 'package:shopping_list_app/utils/colors_app.dart';
import 'package:shopping_list_app/widgets/appBar_widget.dart';
import 'package:shopping_list_app/widgets/card_detail_widget.dart';
import 'package:shopping_list_app/widgets/coupon_Widget.dart';

class CartPage extends StatefulWidget {
  const CartPage({
    super.key,
    this.listItems,
  });
  final ItemsData? listItems;

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: cartItemsData.length,
                  itemBuilder: (context, index) {
                    return CardDetailWidget(
                      listItems: cartItemsData[index],
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: ColorsApp.amberColor,
                        borderRadius: BorderRadius.circular(8)),
                    padding: const EdgeInsets.all(25),
                    child: const Row(
                      children: [
                        Text("Total Price :"),
                        //  Text("${totalPrice().toString()} \RS")
                        Text("       --RS"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const CouponCardWidget()
          ],
        ),
      ),
    );
  }

  totalPrice() {
    double total = 0;

    for (var element in cartItemsData) {
      total = total + (element.quantity! * element.price!);
    }
    return total;
  }
}
