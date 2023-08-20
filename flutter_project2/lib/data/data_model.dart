class UsersModel {
  String? userName;
  int? password;
  String? email;
  List<ShoppingItems>? shoppingItems;

  UsersModel({this.userName, this.password, this.email, this.shoppingItems});

  UsersModel.fromJson(Map<String, dynamic> json) {
    userName = json['userName'];
    password = json['password'];
    email = json['email'];
    if (json['shopping_items'] != null) {
      shoppingItems = <ShoppingItems>[];
      json['shopping_items'].forEach((v) {
        shoppingItems!.add(ShoppingItems.fromJson(v));
      });
    }
  }
}

class ShoppingItems {
  String? itemName;
  int? amount;
  Category? category;

  ShoppingItems({this.itemName, this.amount, this.category});

  ShoppingItems.fromJson(Map<String, dynamic> json) {
    itemName = json['itemName'];
    amount = json['amount'];
    category = json['category'];
  }
}

enum Category { groceries, householdItem, personalCare, clothes }
