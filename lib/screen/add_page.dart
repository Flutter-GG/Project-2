import 'package:flutter/material.dart';
import 'package:shop_app/main.dart';
import 'package:shop_app/models/proudct_model.dart';
import 'package:shop_app/screen/home_page.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController detailesController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Add Prouduct'),
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          TextField(
            controller: nameController,
            decoration: const InputDecoration(
                hintText: 'Enter Product Name',
                enabledBorder: OutlineInputBorder()),
          ),
          TextField(
            controller: detailesController,
            decoration: const InputDecoration(
                hintText: 'Enter Detailes',
                enabledBorder: OutlineInputBorder()),
          ),
          TextField(
            controller: categoryController,
            decoration: const InputDecoration(
                hintText: 'EnterCatequry', enabledBorder: OutlineInputBorder()),
          ),
          TextField(
            controller: quantityController,
            decoration: const InputDecoration(
                hintText: 'Enter Quintity',
                enabledBorder: OutlineInputBorder()),
          ),
          TextField(
            controller: priceController,
            decoration: const InputDecoration(
                hintText: 'Enter Price', enabledBorder: OutlineInputBorder()),
          ),
          ElevatedButton(
            onPressed: () {
              Product newProduct = Product(
                  itemNo: 36,
                  name: nameController.text,
                  detaiels: detailesController.text,
                  category: categoryController.text,
                  image:
                      'https://as1.ftcdn.net/v2/jpg/02/41/11/68/1000_F_241116824_vR9IxkuNZZfP65DeIU9IiKjNXquKq2ab.jpg',
                  quantity: int.tryParse(quantityController.toString()) ?? 0,
                  price: int.tryParse(priceController.text) ?? 0);

              listOfProduct!.add(newProduct);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 130, 102, 111),
            ),
            child: Text('Add Product'),
          )
        ],
      ),
    );
  }
}
