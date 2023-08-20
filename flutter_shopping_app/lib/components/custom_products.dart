import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/components/custom_container.dart';
import 'package:flutter_shopping_app/data/global_var.dart';
import 'package:flutter_shopping_app/data/products_model.dart';
import 'package:flutter_shopping_app/screens/single_item_screen.dart';
import 'package:flutter_shopping_app/screens/update_product.dart';

/* this is the custom product container to manage the product data and functionality only */
class CustomProductsInformation extends StatefulWidget {
  const CustomProductsInformation({
    super.key,
    required this.products,
  });
  final List<ProductsModel> products;

  @override
  State<CustomProductsInformation> createState() =>
      _CustomProductsInformationState();
}

class _CustomProductsInformationState extends State<CustomProductsInformation> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.products.length,
      itemBuilder: (context, index) {
        var product = widget.products[index];
        return CustomContainer(
            stock: product.stock,
            brand: product.brand,
            category: product.category,
            thumbnail: product.thumbnail,
            title: product.title,
            description: product.description,
            price: product.price,
            rating: product.rating,
            addProduct: () {
              _addItems(product);
            },
            deleteProduct: () {
              _deleteItems(product);
            },
            goToSingleProduct: () {
              _goToSingleItem(context, product);
            },
            editProduct: () {
              _editProduct(context, product);
            },
            addToProfile: () {
              _addToProfile(product);
            },
            deleteProductFromCart: () {
              _deleteItemsFromCart(product);
            });
      },
    );
  }

  void _addItems(ProductsModel item) {
    cart.add(item);
    setState(
      () {},
    );
  }

  void _deleteItems(ProductsModel item) {
    products.remove(item);
    setState(
      () {},
    );
  }

  void _deleteItemsFromCart(ProductsModel item) {
    cart.remove(item);
    setState(
      () {},
    );
  }

  void _goToSingleItem(BuildContext context, ProductsModel item) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SinglePostScreen(
          singleItem: item,
        ),
      ),
    );
  }

  void _editProduct(BuildContext context, ProductsModel item) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => UpdateProductScreen(product: item),
      ),
    ).then(
      (value) => {
        if (value == "update") {setState(() {})}
      },
    );
  }

  void _addToProfile(ProductsModel item) {
    profileProducts.add(item);
    setState(
      () {},
    );
  }
}
