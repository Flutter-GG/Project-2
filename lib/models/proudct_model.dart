class Product {
  int itemNo;
  String name;
  String detaiels;
  String category;
  int quantity;
  String image;
  int price;

  Product ({
    required this.itemNo,
    required this.name,
    required this.detaiels,
    required this.category,
    required this.quantity,
    required this.image,
    required this.price
  });

 factory Product.fromJson(Map json) {
  return Product(
  itemNo: json['itemNo'],
  name: json['name'],
  detaiels: json['detaiels'],
  category: json['category'],
  quantity: json['quantity'],
  image: json['image'],
  price: json['price'],
  );
}
}