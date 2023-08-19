import 'package:flutter/material.dart';
import 'package:ghars/datasets/plants_data.dart';
import 'package:ghars/screens/main_scaffold.dart';
import 'functions/category_fun.dart';
import 'model/plants_model.dart';

List listOfPlants = [];
List searchResult = [];
List cartItemList = [];
List indoorPlants = [];
List outdoorPlants = [];

bool isIndoor = false;
bool isOutdoor = false;

void main() {
  for (var element in plantData) {
    listOfPlants.add(Plants.fromJson(element));
  }

  listOfCategory(); // Add item to its list depending on type of plants

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainScaffold(),
    );
  }
}
