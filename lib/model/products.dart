class Products {
  int? productId;
  String? productName;
  String? productImage;
  String? productDescribe;
  int? prica;
  int? amount;
  String? category;

  Products(
      {this.productId,
      this.productName,
      this.productImage,
      this.productDescribe,
      this.prica,
      this.amount,
      this.category});

  Products.fromJson(Map<String, dynamic> json) {
    productId = json['productId'];
    productName = json['productName'];
    productImage = json['productImage'];
    productDescribe = json['productDescribe'];
    prica = json['prica'];
    amount = json['amount'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['productId'] = this.productId;
    data['productName'] = this.productName;
    data['productImage'] = this.productImage;
    data['productDescribe'] = this.productDescribe;
    data['prica'] = this.prica;
    data['amount'] = this.amount;
    data['category'] = this.category;
    return data;
  }
}
