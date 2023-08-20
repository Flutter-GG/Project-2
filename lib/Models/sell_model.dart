class SellDataModel {
  int? price;
  String? title;
  String? itemImage;
  String? content;
  String? images;

  SellDataModel({
    required this.price,
    required this.title,
    required this.itemImage,
    required this.content,
    this.images,
  });

  factory SellDataModel.fromJson(Map<String, dynamic> json) => SellDataModel(
        price: json['price'],
        title: json['title'],
        itemImage: json['itemImage'],
        content: json['content'],
        images: json['images'],
      );
}
