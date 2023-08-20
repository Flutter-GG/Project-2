import 'package:flutter/material.dart';
import 'package:project2/components/buttons/button.dart';
import 'package:project2/components/text/text_field_widget.dart';
import 'package:project2/components/text/text_widget.dart';
import 'package:project2/constants/app_styles.dart';
import 'package:project2/constants/constants.dart';
import 'package:project2/data/global_data.dart';

class CouponWidget extends StatefulWidget {
  const CouponWidget({super.key});

  @override
  State<CouponWidget> createState() => _CouponWidgetState();
}

class _CouponWidgetState extends State<CouponWidget> {
  final couponController = TextEditingController();
  bool applyCoupon = false;
  double newTotlaPrice = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFieldWidget(
          preIcon: const Icon(Icons.discount_outlined),
          hint: "Enter Coupon here",
          lable: "Coupon",
          controller: couponController,
        ),
        Button(
          text: "Apply Coupon",
          onPress: () {
            if ((couponController.text).toLowerCase() == discountCoupon.toLowerCase()) {
              applyCoupon = true;
              newTotlaPrice = totalPrice / 2;
            }
            setState(() {});
          },
          color: whiteColor,
          backgroundColor: darkPrimaryColor,
        ),
        height24,
        applyCoupon
            ? TextWidget(text: "Amount after Discount: $newTotlaPrice S.R",size: 22,)
            : Container(),
      ],
    );
  }
}
