import 'package:flutter/material.dart';
import 'package:project_2/Widgets/wapp_add_controller.dart';
import 'package:project_2/Widgets/wapp_text_field.dart';

class AddScreen extends StatelessWidget {
  final TextEditingController priceControler = TextEditingController();
  final TextEditingController titleControler = TextEditingController();
  final TextEditingController itemImageControler = TextEditingController();
  final TextEditingController contentControler = TextEditingController();
  final TextEditingController imagesControler = TextEditingController();

  AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add new Item",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: WappAddController(
          priceControler: priceControler,
          titleControler: titleControler,
          itemImageControler: itemImageControler,
          contentControler: contentControler,
          imagesControler: imagesControler),
    );
  }
}
