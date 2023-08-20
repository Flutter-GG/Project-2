import 'package:flutter/material.dart';
import 'package:project2/components/general/coupon_widget.dart';
import 'package:project2/components/text/text_field_widget.dart';
import 'package:project2/components/text/text_widget.dart';
import 'package:project2/constants/constants.dart';
import 'package:project2/data/global_data.dart';
import 'package:project2/utility/total_prices.dart';

class ShoppingSummary extends StatefulWidget {
  const ShoppingSummary({super.key, required this.num});
  final int num;

  @override
  State<ShoppingSummary> createState() => ShoppingSummaryState();
}

class ShoppingSummaryState extends State<ShoppingSummary> {
  @override
  Widget build(BuildContext context) {
    totalPrices();
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        // color: lightGrayColor,
        borderRadius: BorderRadius.circular(15),
      ),
      width: AppLayout.getSize(context).width,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const TextWidget(
                text: "Summary",
                size: 22,
              ),
              TextWidget(
                text: "$allCartProducts item/s",
                size: 22,
              ),
            ],
          ),
          height24,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const TextWidget(
                text: "total amount",
                size: 22,
              ),
              TextWidget(
                text: "${totalPrice.toStringAsFixed(2)} S.R",
                size: 22,
              ),
            ],
          ),
          height56,
          const CouponWidget(),
        ],
      ),
    );
  }
}
