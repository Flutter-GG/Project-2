class User {
  String? name;
  String? id;
  String? password;

  User({this.name, this.id, this.password});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['id'] = id;
    data['password'] = password;
    return data;
  }
}
