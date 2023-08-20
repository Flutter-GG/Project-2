import 'package:project_2/main.dart';

int total = 0;
int discount = 10;
totalPrice() {
  for (var element in productslist) {
    total += (element.price! - discount);
  }
  return total;
}
