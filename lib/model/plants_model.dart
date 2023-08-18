class Plants {
  String? name;
  String? type;
  String? imgUrl;
  String? about;
  int? quantity;
  String? infoUrl;
  int? price;

  Plants(
      {this.name,
      this.about,
      this.imgUrl,
      this.infoUrl,
      this.quantity,
      this.type,
      this.price});

  Plants.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    type = json['type'];
    about = json['about'];
    imgUrl = json['imgUrl'];
    quantity = json['quantity'];
    infoUrl = json['moreInfo'];
    price = json['price'];
  }
}
