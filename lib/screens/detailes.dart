import 'package:flutter/material.dart';
import 'package:project_2/constant/colors.dart';
import 'package:project_2/constant/extinsions.dart';
import 'package:project_2/constant/spaces.dart';
import 'package:project_2/models/product_model.dart';
import 'package:project_2/screens/cart.dart';

class Show extends StatefulWidget {
  const Show({super.key, required this.product});
  final Products product;
  @override
  State<Show> createState() => _ShowState();
}

class _ShowState extends State<Show> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WColors.backG,
      appBar: AppBar(
        backgroundColor: WColors.darkRed,
        elevation: 0,
        title: const Text("Detiles"),
        leading: const BackButton(color: Color.fromARGB(255, 255, 254, 254)),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                widget.product.title!,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 42,
                    color: WColors.orange),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text(
                    " ${widget.product.rating.toString()}",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.green),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Space.spaceH24,
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  widget.product.thumbnail!,
                  height: 200,
                  width: 400,
                  fit: BoxFit.fill,
                ),
              ),
              Space.spaceH32,
              Text(
                widget.product.description!,
                style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                    color: WColors.darkRed),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    " ${widget.product.price!} \$",
                    style: const TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                        color: WColors.darkRed),
                  ).shimmered
                ],
              ),
              Space.spaceH24,
              ElevatedButton(
                onPressed: () {
                  productsList!.add(widget.product);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: WColors.orange,
                  shape: const StadiumBorder(),
                  fixedSize: Size(MediaQuery.of(context).size.width - 50, 50),
                ),
                child: const Text("Add to cart"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
