import 'package:flutter/material.dart';
import 'package:project_2/constant/colors.dart';
import 'package:project_2/main.dart';
import 'package:shimmer/shimmer.dart';

extension Screen on BuildContext {
  getWidth() {
    return MediaQuery.of(this).size.width;
  }

  getheight() {
    return MediaQuery.of(this).size.height;
  }

  pushPage({required Widget screen}) {
    return Navigator.push(
        this, MaterialPageRoute(builder: (context) => screen));
  }

  popPage({required Widget screen}) {
    return Navigator.pop(this);
  }
  

removingItem(index){

  productslist.removeAt(index);
                     
}

  pushAndRemove({required Widget screen}) {
    return Navigator.pushAndRemoveUntil(
      this,
      MaterialPageRoute(builder: (context) => screen),
      ModalRoute.withName('-'),
    );
  }
}
extension ShimmerThisWidget on Widget {
  Widget get shimmered => Shimmer.fromColors(
        baseColor: WColors.orange,
        highlightColor: WColors.snow,
        child: this,
      );
}