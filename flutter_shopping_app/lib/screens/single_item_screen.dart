import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_shopping_app/components/custom_app_bar.dart';
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
      appBar: const CustomAppBar(text: 'test'),
      body: SizedBox(
        child: Column(
          children: [
            CustomText(text: '${widget.singleItem.title}'),
            CustomText(text: '${widget.singleItem.description}'),
            CustomText(text: '\$${widget.singleItem.price}'),
            CustomText(text: '${widget.singleItem.rating}★'),
            CustomText(text: '${widget.singleItem.stock} in stock'),
            CustomText(text: 'brand: ${widget.singleItem.brand}'),
            CustomText(text: 'category: ${widget.singleItem.category}'),
            Image.network('${widget.singleItem.thumbnail}'),
            ImageSlideshow(
              width: double.infinity,
              height: 300,
              initialPage: 0,
              indicatorColor: Colors.blue,
              indicatorBackgroundColor: Colors.grey,
              autoPlayInterval: 3000,
              isLoop: true,
              children: _forLoopImages(),
            ),
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
