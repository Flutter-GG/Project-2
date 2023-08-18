import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/components/custom_text.dart';
import 'package:slideable/slideable.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    this.id,
    required this.stock,
    required this.brand,
    required this.category,
    required this.thumbnail,
    required this.title,
    required this.description,
    required this.price,
    this.discountPercentage,
    required this.rating,
    this.addItem,
    this.deleteItem,
    this.goToSingleProduct,
  });
  final Function()? addItem;
  final Function()? deleteItem;
  final Function()? goToSingleProduct;
  final num? id;
  final num? stock;
  final String? brand;
  final String? category;
  final String? thumbnail;
  final String? title;
  final String? description;
  final num? price;
  final num? discountPercentage;
  final num? rating;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: goToSingleProduct ?? () {},
      child: SizedBox(
        height: 100,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Slideable(
            resetSlide: true,
            items: <ActionItems>[
              ActionItems(
                icon: const Icon(
                  Icons.shopping_cart,
                  color: Colors.blue,
                ),
                onPress: addItem ?? () {},
                backgroudColor: Colors.transparent,
              ),
              ActionItems(
                icon: const Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                onPress: deleteItem ?? () {},
                backgroudColor: Colors.transparent,
              ),
            ],
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 1,
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey[350],
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.network(
                        "$thumbnail",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: "$title",
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        const SizedBox(height: 5),
                        CustomText(
                          text: "$description",
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            CustomText(
                              text:
                                  "$brand, $category, $stock, $rating★, \$$price",
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
