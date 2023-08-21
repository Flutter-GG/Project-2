import 'package:project2/data/global_data.dart';
import 'package:project2/models/Product_model.dart';

addToCart({required Product product, required int quantity}) {
  for (var element in listCart) {
    if (element.id == product.id) {
      element.quantity = element.quantity! + quantity;
      product.quantity = product.quantity! - quantity;
      allCartProducts += quantity;
      return;
    }
  }
  Product newproduct = Product(
      id: product.id,
      category: product.category,
      image: product.image,
      name: product.name,
      price: product.price,
      rating: product.rating,
      quantity: quantity // ? here is the diffrent
      );
  product.quantity = product.quantity! - quantity;
  allCartProducts += quantity;
  listCart.add(newproduct);
}
