import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/components/custom_text.dart';
import 'package:flutter_shopping_app/data/products_model.dart';

class SinglePostScreen extends StatefulWidget {
  const SinglePostScreen({Key? key, required this.singleItem})
      : super(key: key);
  final ProductsModel singleItem;

  @override
  State<SinglePostScreen> createState() => _SinglePostScreenState();
}

class _SinglePostScreenState extends State<SinglePostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Column(
          children: [
            CustomText(text: '${widget.singleItem.title}'),
            CustomText(text: '${widget.singleItem.description}'),
            CustomText(text: '${widget.singleItem.price}'),
            CustomText(text: '${widget.singleItem.rating}'),
            CustomText(text: '${widget.singleItem.stock}'),
            CustomText(text: '${widget.singleItem.brand}'),
            CustomText(text: '${widget.singleItem.category}'),
            Image.network('${widget.singleItem.thumbnail}'),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: _forLoopImages(),
              ),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> _forLoopImages() {
    List<Widget> imageWidgets = [];
    if (widget.singleItem.images != null) {
      for (var image in widget.singleItem.images!) {
        imageWidgets.add(Image.network(image));
      }
    }
    return imageWidgets;
  }
}
