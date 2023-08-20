class ItemsData {
  int? userID;
  int? password;
  String? name;
  String? description;
  int? quantity;
  String? imageItem;
  int? price;

  List<String>? categories;

  ItemsData(
      {this.userID,
      this.password,
      this.name,
      this.description,
      this.imageItem,
      this.quantity,
      this.price,
      this.categories});

  ItemsData.fromJson(Map<String, dynamic> json) {
    userID = json['userID'];
    password = json['password'];
    name = json['name'];
    description = json['description'];
    quantity = json['quantity'];
    imageItem = json['imageItem'];
    price = json['price'];

    categories = json['categories'].cast<String>();
  } // iscart

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userID'] = this.userID;
    data['password'] = this.password;
    data['name'] = this.name;
    data['description'] = this.description;
    data['quantity'] = this.quantity;
    data['imageItem'] = this.imageItem;
    data['price'] = this.price;

    data['categories'] = this.categories;
    return data;
  }
}
