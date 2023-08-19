import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/components/custom_app_bar.dart';
import 'package:flutter_shopping_app/components/custom_text.dart';
import 'package:flutter_shopping_app/data/products_model.dart';

/* this is for updating the post, change the body anf the title of the post */
class UpdateProductScreen extends StatefulWidget {
  final ProductsModel product;

  const UpdateProductScreen({super.key, required this.product});

  @override
  State<UpdateProductScreen> createState() => _EditProductScreenState();
}

class _EditProductScreenState extends State<UpdateProductScreen> {
  TextEditingController? _titleController;
  TextEditingController? _descriptionController;
  TextEditingController? _priceController;
  TextEditingController? _discountPercentageController;
  TextEditingController? _stockController;
  TextEditingController? _brandController;
  TextEditingController? _categoryController;
  TextEditingController? _thumbnailController;

  @override
  void initState() {
    super.initState();

    _priceController =
        TextEditingController(text: widget.product.price.toString());
    _categoryController = TextEditingController(text: widget.product.category);
    _titleController = TextEditingController(text: widget.product.title);
    _descriptionController =
        TextEditingController(text: widget.product.description);
    _discountPercentageController = TextEditingController(
        text: widget.product.discountPercentage.toString());
    _stockController =
        TextEditingController(text: widget.product.stock.toString());
    _brandController = TextEditingController(text: widget.product.brand);
    _thumbnailController =
        TextEditingController(text: widget.product.thumbnail);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(text: 'Update ${widget.product.title}'),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: _titleController,
                decoration: const InputDecoration(
                  label: CustomText(text: 'Title'),
                  hintText: 'Title',
                ),
              ),
              TextField(
                controller: _descriptionController,
                maxLines: 20,
                decoration: const InputDecoration(
                  label: CustomText(text: 'description'),
                  hintText: 'description',
                ),
              ),
              TextField(
                controller: _priceController,
                maxLines: 20,
                decoration: const InputDecoration(
                  label: CustomText(text: 'Price'),
                  hintText: 'Price',
                ),
              ),
              TextField(
                controller: _discountPercentageController,
                maxLines: 20,
                decoration: const InputDecoration(
                  label: CustomText(text: 'Discount'),
                  hintText: 'Discount',
                ),
              ),
              TextField(
                controller: _stockController,
                maxLines: 20,
                decoration: const InputDecoration(
                  label: CustomText(text: 'Stock'),
                  hintText: 'Stock',
                ),
              ),
              TextField(
                controller: _brandController,
                maxLines: 20,
                decoration: const InputDecoration(
                  label: CustomText(text: 'Brand'),
                  hintText: 'Brand',
                ),
              ),
              TextField(
                controller: _categoryController,
                maxLines: 20,
                decoration: const InputDecoration(
                  label: CustomText(text: 'Category'),
                  hintText: 'Category',
                ),
              ),
              TextField(
                controller: _thumbnailController,
                maxLines: 20,
                decoration: const InputDecoration(
                  label: CustomText(text: 'Thumbnail'),
                  hintText: 'Thumbnail',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  widget.product.title = _titleController.toString();
                  widget.product.description =
                      _descriptionController.toString();
                  widget.product.price =
                      num.tryParse(_priceController.toString()) ?? 0;
                  widget.product.description =
                      _discountPercentageController.toString();
                  widget.product.stock =
                      num.tryParse(_stockController.toString()) ?? 0;
                  widget.product.brand = _brandController.toString();
                  widget.product.category = _categoryController.toString();
                  widget.product.thumbnail = _thumbnailController.toString();

                  Navigator.pop(context, "update");
                },
                child: const Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
