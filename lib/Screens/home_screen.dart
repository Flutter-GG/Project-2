import 'package:flutter/material.dart';
import 'package:project_2/main.dart';
import '../Widgets/wapp_item_card.dart';
import '../constants/spacings.dart';
import 'add_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "data",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () async {
              final result = await Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddScreen()),
              );

              if (result == "back") {
                setState(() {}); 
              }
            },
            icon: Icon(
              Icons.add,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: SelllistData.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                child: WappItemCard(sellDataModel: SelllistData[index]),
                onLongPress: () {
                  SelllistData.removeAt(index);
                  setState(() {});
                },
              ),
              kVSpace24,
            ],
          );
        },
      ),
    );
  }
}
