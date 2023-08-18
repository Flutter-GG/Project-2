import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/components/custom_app_bar.dart';
import 'package:flutter_shopping_app/data/global_var.dart';
import 'package:flutter_shopping_app/data/products_model.dart';

class AddItemScreen extends StatefulWidget {
  const AddItemScreen({super.key});

  @override
  State<AddItemScreen> createState() => _AddItemScreenState();
}

class _AddItemScreenState extends State<AddItemScreen> {
  TextEditingController? _titleController;
  TextEditingController? _descriptionController;
  TextEditingController? _priceController;
  TextEditingController? _discountPercentageController;
  TextEditingController? _stockController;
  TextEditingController? _brandController;
  TextEditingController? _categoryController;
  TextEditingController? _thumbnailController;
  TextEditingController? _imagesController;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController();
    _descriptionController = TextEditingController();
    _priceController = TextEditingController();
    _discountPercentageController = TextEditingController();

    _stockController = TextEditingController();
    _brandController = TextEditingController();
    _categoryController = TextEditingController();
    _thumbnailController = TextEditingController();
    _imagesController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(text: 'Add product'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: _titleController,
                decoration: const InputDecoration(hintText: 'Product Title'),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _descriptionController,
                decoration:
                    const InputDecoration(hintText: 'Product Description'),
              ),
              TextField(
                controller: _priceController,
                decoration: const InputDecoration(hintText: 'Product Price'),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _discountPercentageController,
                decoration: const InputDecoration(
                    hintText: 'Product Discount Percentage'),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _stockController,
                decoration: const InputDecoration(hintText: 'Product Stock'),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _brandController,
                decoration: const InputDecoration(hintText: 'Product Brand'),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _categoryController,
                decoration: const InputDecoration(hintText: 'Product Category'),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _thumbnailController,
                decoration:
                    const InputDecoration(hintText: 'Product Thumbnail'),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _imagesController,
                decoration: const InputDecoration(hintText: 'Product Images'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  _addPost();
                },
                child: const Text('Add product'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _addPost() {
    final String title = _titleController?.text ?? '';
    final String description = _descriptionController?.text ?? '';
    final String price = _priceController?.text ?? '';
    final String discountPercentage = _discountPercentageController?.text ?? '';
    final String stock = _stockController?.text ?? '';
    final String brand = _brandController?.text ?? '';
    final String category = _categoryController?.text ?? '';
    final String thumbnail = _thumbnailController?.text ?? '';
    final String images = _imagesController?.text ?? '';

    if (title.isNotEmpty &&
        description.isNotEmpty &&
        price.isNotEmpty &&
        discountPercentage.isNotEmpty &&
        stock.isNotEmpty &&
        brand.isNotEmpty &&
        category.isNotEmpty &&
        thumbnail.isNotEmpty &&
        images.isNotEmpty) {
      final num priceValue = num.tryParse(price) ?? 0;
      final num discountPercentageValue = num.tryParse(discountPercentage) ?? 0;
      final num stockValue = num.tryParse(stock) ?? 0;
      final List<String> imagesList = images.split(',');

      ProductsModel newPost = ProductsModel(
        id: products.length + 1,
        title: title,
        brand: brand,
        category: category,
        description: description,
        discountPercentage: discountPercentageValue,
        price: priceValue,
        rating: 0,
        stock: stockValue,
        thumbnail: thumbnail,
        images: imagesList,
      );

      setState(() {
        products.add(newPost);
      });
    }
    Navigator.pop(context, "addedPost");
  }
}
