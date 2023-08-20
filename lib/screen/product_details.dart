import 'package:flutter/material.dart';
import 'package:shop_app/models/proudct_model.dart';
import 'package:shop_app/screen/edit_page.dart';

List<Product>? cartList = [];

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key, required this.product});

  final Product product;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}
class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.cyan,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EditProduct(),
                    ));
              },
              icon: const Icon(Icons.edit),
            )
          ]),
      body: Column(
        children: [
          Center(
            child: Container(
              width: 250,
              height: 350,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  image: DecorationImage(
                      image: AssetImage(widget.product.image),
                      fit: BoxFit.contain)),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                widget.product.name,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                widget.product.detaiels,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                "${widget.product.price} \SAR",
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: MaterialButton(
                    color: Colors.amber,
                    onPressed: () {
                      cartList!.add(widget.product);
                      setState(() {});
                    },
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.only(
                      topEnd: Radius.circular(15),
                      bottomStart: Radius.circular(15),
                    )),
                    child: const Text('Add To Cart'))),
          )
        ],
      ),
    );
  }
}
