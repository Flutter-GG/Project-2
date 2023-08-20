
import 'package:project2/models/Product_model.dart';
import 'package:project2/models/user_model.dart';

List<Product> listProducts = [];
List<Product> listCart = [];

List<User> listUsers = [];
String userName = "";

int allCartProducts = 0;
double totalPrice = 0.0;
String discountCoupon = "flutter";


asd(){
  listProducts.sort((b, a) => a.name!.compareTo(b.name!));
}