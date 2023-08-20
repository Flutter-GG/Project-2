import 'package:coupon_uikit/coupon_uikit.dart';
import 'package:flutter/material.dart';
import 'package:shopping_list_app/utils/colors_app.dart';

class CouponCardWidget extends StatelessWidget {
  const CouponCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: CouponCard(
        height: 120,
        backgroundColor: ColorsApp.amberColor,
        clockwise: true,
        curvePosition: 135,
        curveRadius: 30,
        curveAxis: Axis.vertical,
        borderRadius: 10,
        firstChild: Container(
          decoration: const BoxDecoration(
            color: ColorsApp.primeryColor,
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '23%',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'OFF',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(color: Colors.white54, height: 0),
            ],
          ),
        ),
        secondChild: Container(
          width: 50,
          padding: const EdgeInsets.all(18),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'ABRAR',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: ColorsApp.whiteColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Text(
                'Valid Till - 25 Aug 2023',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ColorsApp.black45Color,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
