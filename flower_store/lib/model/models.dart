// ignore_for_file: non_constant_identifier_names

class ProductModel {
  String ItemName;
  int ItemPrice;
  String ImagePath;
  dynamic Color;

  ProductModel({
    required this.ItemName,
    required this.ItemPrice,
    required this.ImagePath,
    required this.Color,
  });

  factory ProductModel.fromJson(Map json) {
    return ProductModel(
      ItemName: json['ItemName'],
      ItemPrice: json['ItemPrice'],
      ImagePath: json['ImagePath'],
      Color: json['Color'],
    );
  }
}
