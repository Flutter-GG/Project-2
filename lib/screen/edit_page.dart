import 'package:flutter/material.dart';
import 'package:shop_app/models/proudct_model.dart';

class EditProduct extends StatefulWidget {
  const EditProduct({super.key, this.product});

  final Product? product;

  @override
  State<EditProduct> createState() => _EditProductState();
}

class _EditProductState extends State<EditProduct> {
  TextEditingController? _nameController;
  TextEditingController? _detailesController;
  TextEditingController? _categoryController;
  TextEditingController? _priceController;
  TextEditingController? _quintityController;

  @override
  void initState() {
    super.initState();

    _nameController = TextEditingController(text: widget.product?.name);
    _detailesController = TextEditingController(text: widget.product?.detaiels);
    _categoryController = TextEditingController(text: widget.product?.category);
    _quintityController =
        TextEditingController(text: widget.product?.quantity.toString());
    _priceController =
        TextEditingController(text: widget.product?.price.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Edit Product'),
          backgroundColor: Color.fromARGB(255, 187, 179, 181),
        ),
        body: Container(
          padding: EdgeInsets.all(4),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                    controller: _nameController,
                    maxLines: 20,
                    decoration: const InputDecoration(hintText: 'name')),
                TextField(
                    controller: _detailesController,
                    maxLines: 30,
                    decoration: const InputDecoration(hintText: 'detailes')),
                TextField(
                    controller: _categoryController,
                    maxLines: 30,
                    decoration: const InputDecoration(hintText: '')),
                TextField(
                    controller: _priceController,
                    maxLines: 30,
                    decoration: const InputDecoration(
                       hintText: 'Price')),
                TextField(
                    controller: _quintityController,
                    maxLines: 30,
                    decoration: const InputDecoration(
                     hintText: 'Quintity')),
                ElevatedButton(
                  onPressed: () {
                    widget.product!.name = _nameController!.text;
                    widget.product!.detaiels = _detailesController!.text;
                    widget.product!.category = _categoryController!.text;
                    widget.product!.quantity = widget.product!.price =
                        int.tryParse(_priceController.toString()) ?? 0;

                    Navigator.pop(context,"Update");
                  },
                  child: Text('Save'),
                )
              ],
            ),
          ),
        ));
  }
}
