import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:project2/model/products.dart';
import 'package:project2/model/users.dart';
// ignore: unused_import
import 'package:project2/screen/splash_screen.dart';

List<Users>? listUser = [];
List<Products> listProducts = [];
List<Products> cartListProducts = [];
List<Products> listSalad = [];
List<Products> listFruit = [];

void main() {
  File userFile =
      File('/Users/wejdant/Desktop/Labs/project2/lib/data/users.json');
  var stringUser = userFile.readAsStringSync();
  var userData = json.decode(stringUser);

  for (var element in userData["users"]) {
    listUser?.add(Users.fromJson(element));
  }

  File productsFile =
      File('/Users/wejdant/Desktop/Labs/project2/lib/data/products.json');
  var stringProducts = productsFile.readAsStringSync();
  var productsData = json.decode(stringProducts);

  for (var element in productsData["products"]) {
    listProducts.add(Products.fromJson(element));

    if (Products.fromJson(element).category == "salad") {
      listSalad.add(Products.fromJson(element));
    } else {
      listFruit.add(Products.fromJson(element));
    }
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen());
  }
}
