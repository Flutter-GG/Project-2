import 'package:flutter/material.dart';
import 'package:project_2/constant/colors.dart';
import 'package:project_2/constant/spaces.dart';
import 'package:project_2/main.dart';
import 'package:project_2/models/product_model.dart';
import 'package:awesome_dialog/awesome_dialog.dart';


class AddScreen extends StatelessWidget {
  AddScreen({super.key});
  final TextEditingController? controllerItemName = TextEditingController();
  final TextEditingController? controllerPrice = TextEditingController();
  final TextEditingController? controllerRating = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Add Item"),
          backgroundColor: WColors.snow,
          centerTitle: true,
          leading: const BackButton(color: Color.fromARGB(255, 255, 254, 254)),
        
        ),
        body: ListView(
          children: [
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: controllerItemName,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(width: 4, color: WColors.snow),
                          ),
                          hintText: "Item Name"),
                    ),
                  ),
                  Space.spaceH64,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: controllerPrice,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(width: 4, color: WColors.snow),
                          ),
                          hintText: "Item Price"),
                    ),
                  ),
                  Space.spaceH64,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: controllerRating,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(width: 4, color: WColors.snow),
                          ),
                          hintText: "Your rate!"),
                    
                    ),
                  ),
                  ElevatedButton(
            onPressed: () async {
              if (controllerItemName!.text.isEmpty ||
                  controllerPrice!.text.isEmpty) {
                AwesomeDialog(
                  context: context,
                  dialogType: DialogType.error,
                  animType: AnimType.rightSlide,
                  title: 'Warning',
                  desc: 'Please complete all fields',
                ).show();
              } else {
                  productslist.add(
                    Products(
                      title: controllerItemName!.text,
                  price: int.tryParse(controllerPrice!.text,),rating: double.tryParse(controllerRating!.text)));
                 Navigator.pop(context, "back");}
  }, child: Text("Add Item"),)],
              ),
            ),
          ],
        ));
  }
}
