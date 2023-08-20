import 'package:flutter/material.dart';
import 'package:project_2/constant/colors.dart';
import 'package:project_2/constant/extinsions.dart';
import 'package:project_2/main.dart';
import 'package:project_2/models/product_model.dart';
import 'package:project_2/screens/cart.dart';
import 'package:project_2/screens/detailes.dart';
import 'package:project_2/screens/home_list.dart';
import 'package:project_2/screens/update_screen.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:project_2/widget/quantity.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

bool _hasBeenPressed = false;

class CardWidget extends StatefulWidget {
  const CardWidget({
    super.key,
    required this.product,
  });

  final Products product;

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: () => context.pushPage(
          screen: Show(
        product: widget.product,
      )),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          children: [
            SlidableAction(
              onPressed: (context) {
                productslist.remove(widget.product);
                context.findAncestorStateOfType<HomeState>()?.setState(() {});
              },
              backgroundColor: WColors.orange,
              foregroundColor: WColors.white,
              icon: Icons.delete,
              label: 'Delete',
            ),
          ],
        ),
        child: SizedBox(
            height: 240,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              elevation: 3,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          widget.product.thumbnail!,
                          height: 160,
                          width: 160,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(
                      widget.product.title!,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 135, 133, 133)),
                    ),
                    IconButton(
                      onPressed: () {
                        productsList!.add(widget.product);

                        setState(() {
                          _hasBeenPressed = !_hasBeenPressed;
                        });
                      },
                      icon: const Icon(
                        Icons.shopping_cart_outlined,
                        size: 25.0,
                      ),
                      color: _hasBeenPressed ? Colors.blue : Colors.black,
                    ),
                    _hasBeenPressed
                        ? const AddButton()
                        : IconButton(
                            onPressed: () => context
                                .pushPage(
                                    screen:
                                        Update(updateProduct: widget.product))
                                .then(
                              (value) {
                                if (value == "update") {
                                  context
                                      .findAncestorStateOfType<HomeState>()
                                      ?.setState(() {});
                                }
                              },
                            ),
                            icon: const Icon(
                              Icons.edit_note_rounded,
                              size: 25.0,
                            ),
                          ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        overflow: TextOverflow.clip,
                        " ${widget.product.price}\$",
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ]),
                ],
              ),
            )),
      ),
    );
  }
}
