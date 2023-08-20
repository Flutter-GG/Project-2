import 'package:project2/data/global_data.dart';
import 'package:project2/models/Product_model.dart';

increaseQuantity(Product product) {
  for (var element in listProducts) {
    if (element.id == product.id && element.quantity! > 0) {
      element.quantity = element.quantity! - 1;
      product.quantity = product.quantity! + 1;
      allCartProducts += 1;
    }
  }
}
