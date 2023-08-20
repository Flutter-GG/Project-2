import 'package:flutter/material.dart';
import 'package:shopping_list_app/extensions/app_measurement.dart';

class ImageBigDisplay extends StatelessWidget {
  const ImageBigDisplay({super.key, required this.imageURL});

  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: context.getWidth(),
        height: context.getWidth() - 100,
        child: FittedBox(
          fit: BoxFit.fill,
          child: Image.network(imageURL),
        ));
  }
}
