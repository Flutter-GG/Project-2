import 'package:flutter/material.dart';
import 'package:ghars/datasets/plants_data.dart';
import 'package:ghars/screens/home_page.dart';
import 'constants/colors.dart';
import 'model/plants_model.dart';

List listOfPlants = [];

void main() {
  for (var element in plantData) {
    listOfPlants.add(Plants.fromJson(element));
  }
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: GColors.white,
        body: HomePage(),
      ),
    );
  }
}
