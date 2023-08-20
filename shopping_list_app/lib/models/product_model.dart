class ProductModel {
  int? id;
  String? title;
  String? description;
  int? price;
  int? purchased;
  double? rating;
  int? stock;
  String? brand;
  String? category;
  String? thumbnail;
  List<String>? images;

  ProductModel(
      {this.id,
      this.title,
      this.description,
      this.price,
      this.purchased,
      this.rating,
      this.stock,
      this.brand,
      this.category,
      this.thumbnail,
      this.images});

  ProductModel.fromJson(Map json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    price = json['price'];
    purchased = json['purchased'];
    rating = json['rating'];
    stock = json['stock'];
    brand = json['brand'];
    category = json['category'];
    thumbnail = json['thumbnail'];
    images = json['images'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['price'] = this.price;
    data['purchased'] = this.purchased;
    data['rating'] = this.rating;
    data['stock'] = this.stock;
    data['brand'] = this.brand;
    data['category'] = this.category;
    data['thumbnail'] = this.thumbnail;
    data['images'] = this.images;
    return data;
  }
}
