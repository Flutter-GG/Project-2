import 'package:flutter/material.dart';
import 'package:shop_app/models/proudct_model.dart';
import 'package:shop_app/screen/product_details.dart';

class CardWidget extends StatefulWidget {
  CardWidget({
    Key? key,
    required this.product,
    this.newFunction,
  }) : super(key: key);

  final Product product;
  final Function()? newFunction;

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductDetails(product: widget.product),
            ),
          );
        },
        child: Stack(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 170,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 248, 244, 244),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50, left: 10),
                        child: Text(
                          widget.product.name,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "${widget.product.price} \SAR",
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 10, left: 200),
                          child: MaterialButton(
                              color: Colors.amber,
                              onPressed: () {
                                cartList!.add(widget.product);
                                setState(() {});
                              },
                              child: const Text('Add To Cart'),
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadiusDirectional.only(
                                topEnd: Radius.circular(15),
                                bottomStart: Radius.circular(15),
                              ))))
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                height: 170,
                width: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage(widget.product.image),
                      fit: BoxFit.fill),
                ),
              ),
            ),
          ],
        ));
  }
}
