import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_2/Models/sell_model.dart';
import 'package:project_2/Widgets/wapp_navigationBar.dart';

List<SellDataModel> SelllistData = [];
List<SellDataModel> CartList = [];

void main() async {
  Future<void> loadSellData() async {
    String jsonString = await rootBundle.loadString(
        '/Users/36nv/Desktop/Flutter_Bootcamp/forurth_week/Project-2-c0099c9ee0dc69794aa21f0502ada73b3c39c58e/lib/Data/sell_data.json');
    var SellData = json.decode(jsonString);
    for (var element in SellData["SellData"]) {
      SelllistData.add(SellDataModel.fromJson(element));
    }
  }

  WidgetsFlutterBinding.ensureInitialized();
  await loadSellData();
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WappNavigation(),
    );
  }
}
