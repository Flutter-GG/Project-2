class Product {
  int? id;
  String? name;
  String? image;
  double? price;
  String? category;
  int? quantity;
  int? rating;

  Product(
      {this.id,
      this.name,
      this.image,
      this.price,
      this.category,
      this.quantity,
      this.rating});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    price = json['price'].toDouble(); // ! to prevent an error when reading int type 
    category = json['category'];
    quantity = json['quantity'];
    rating = json['rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
    data['price'] = price;
    data['category'] = category;
    data['quantity'] = quantity;
    data['rating'] = rating;
    return data;
  }
}
