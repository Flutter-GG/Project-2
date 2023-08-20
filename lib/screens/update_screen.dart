import 'package:flutter/material.dart';
import 'package:project_2/constant/colors.dart';
import 'package:project_2/constant/spaces.dart';
import 'package:project_2/models/product_model.dart';

class Update extends StatefulWidget {
  const Update({super.key, this.updateProduct});
  final Products? updateProduct;
  @override
  State<Update> createState() => UpdateState();
}

class UpdateState extends State<Update> {
  TextEditingController titleController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  @override
  void initState() {
    if (widget.updateProduct.toString().isNotEmpty) {
      titleController =
          TextEditingController(text: widget.updateProduct!.title);
      priceController =
          TextEditingController(text: widget.updateProduct!.price.toString());
      super.initState();
    }
  }

  State<Update> createState() => UpdateState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Space.spaceH16,
              TextField(
                controller: titleController,
                decoration: InputDecoration(
                  hintText: 'Product Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      width: 4,
                    ),
                  ),
                ),
              ),
              Space.spaceH16,
              TextField(
                controller: priceController,
                decoration: InputDecoration(
                  hintText: 'Product price',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      width: 4,
                    ),
                  ),
                ),
              ),
              Space.spaceH16,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: WColors.darkRed),
                      onPressed: () {
                        //
                        widget.updateProduct!.title = titleController.text;
                        widget.updateProduct!.price =
                            int.parse(priceController.text);

                        Navigator.pop(context, "update");
                        setState(() {});
                      },
                      child: const Text('Update')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
