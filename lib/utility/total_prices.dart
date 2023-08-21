import 'package:project2/data/global_data.dart';

totalPrices(){
  totalPrice = 0;
  for (var element in listCart) {
    totalPrice = totalPrice + (element.quantity! * element.price!);
  }
}