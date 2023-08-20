import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
// [ itemName,   itemPrice,      imagePath,                      color ]

    ["Baby Rose", "4.00", "assets/image/pink-baby-rose.jpg", Colors.pink],
    ["Yellow Rose", "2.50", "assets/image/yellow-rose.jpg", Colors.yellow],
    ["Purple Rose", "12.80", "assets/image/purble-rose.jpg", Colors.brown],
    ["White Rose", "20.00", "assets/image/white-roses.jpg", Colors.cyan],
    ["Red Rose", "31.00", "assets/image/red-rose-roses.jpg", Colors.red],
    ["Sunflower", "50.00", "assets/image/Sunflower-rose.png", Colors.green],
  ];

  // list of cart items
  final List _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => _shopItems;
  int counter = 0;

  // add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }

  int get count {
    return _cartItems.length;
  }

  String calculateDiscound() {
    double price = double.parse(calculateTotal());
    double discount = (price * 50 / 100);
    return discount.toStringAsFixed(2);
  }

// i'm not using :(
  void addCounter() {
    counter++;
    notifyListeners();
  }

  void minusCounter() {
    counter--;
    notifyListeners();
  }
}
