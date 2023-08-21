import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:project2/models/Product_model.dart';

class RatingBarWidget extends StatefulWidget {
  const RatingBarWidget({super.key, required this.product});
  final Product product;

  @override
  State<RatingBarWidget> createState() => _RatingBarWidgetState();
}

class _RatingBarWidgetState extends State<RatingBarWidget> {
  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: widget.product.rating!.toDouble(),
      minRating: 0,
      allowHalfRating: false,
      itemCount: 5,
      itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
      itemBuilder: (context, _) =>  Icon(
        Icons.star,
        color: Colors.orange.shade800,
      ),
      itemSize: 24,
      onRatingUpdate: (rating) {
        widget.product.rating = rating.toInt();
      },
    );
  }
}
