class Users {
  int? userId;
  String? username;
  String? password;

  Users({this.userId, this.username, this.password});

  Users.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    username = json['username'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['userId'] = userId;
    data['username'] = username;
    data['password'] = password;
    return data;
  }
}
