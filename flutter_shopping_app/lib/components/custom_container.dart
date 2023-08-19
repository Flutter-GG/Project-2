import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/components/custom_text.dart';
import 'package:flutter_shopping_app/extensions/colors.dart';
import 'package:flutter_shopping_app/extensions/extensions.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:slideable/slideable.dart';

/* this is the custom container, I used FontAwesomeIcons for icons and Slideable for buttons */
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
    this.addProduct,
    this.deleteProduct,
    this.goToSingleProduct,
    this.editProduct,
    this.addToProfile,
  });
  final Function()? addProduct;
  final Function()? deleteProduct;
  final Function()? goToSingleProduct;
  final Function()? editProduct;
  final Function()? addToProfile;
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
        width: context.width,
        child: Center(
          child: Slideable(
            resetSlide: true,
            items: <ActionItems>[
              ActionItems(
                icon: const Icon(
                  FontAwesomeIcons.cartShopping,
                  color: CustomColors.blue,
                ),
                onPress: addProduct ?? () {},
                backgroudColor: Colors.transparent,
              ),
              ActionItems(
                icon: const Icon(
                  FontAwesomeIcons.deleteLeft,
                  color: CustomColors.red,
                ),
                onPress: deleteProduct ?? () {},
                backgroudColor: Colors.transparent,
              ),
              ActionItems(
                icon: const Icon(
                  FontAwesomeIcons.pen,
                  color: CustomColors.blue,
                ),
                onPress: editProduct ?? () {},
                backgroudColor: Colors.transparent,
              ),
              ActionItems(
                icon: const Icon(
                  FontAwesomeIcons.personRifle,
                  color: CustomColors.blue,
                ),
                onPress: addToProfile ?? () {},
                backgroudColor: Colors.transparent,
              ),
            ],
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: CustomColors.white,
                border: Border.all(
                  width: 1,
                  color: CustomColors.black,
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
                      color: CustomColors.grey,
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 1,
                        color: CustomColors.white,
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
                          color: CustomColors.black,
                        ),
                        const SizedBox(height: 5),
                        CustomText(
                          text: "$description",
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: CustomColors.black,
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            CustomText(
                              text:
                                  "$brand, $category, $stock, $rating★, \$$price",
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: CustomColors.black,
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
