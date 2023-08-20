import 'package:flutter/material.dart';
import 'package:flutter_project2/data/data_model.dart';
import 'package:flutter_project2/data/my_data.dart';
import 'package:flutter_project2/screens/login_screen.dart';
import 'package:flutter_project2/utils/helpers.dart';

List<UsersModel> usersList = [];
String userName = '';
List <ShoppingItems> oneUserList = getUserList();

void main() {
  for (var element in shoppingItems) {
    usersList.add(UsersModel.fromJson(element));
  }
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
