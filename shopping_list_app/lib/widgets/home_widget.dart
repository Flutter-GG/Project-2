
import 'package:flutter/material.dart';
import 'package:shopping_list_app/utils/colors_app.dart';
import 'package:shopping_list_app/widgets/categories_widget.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({
    super.key,
  });

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  var colorizeColors = [
    ColorsApp.primeryColor,
    ColorsApp.amberColor,
    ColorsApp.primeryColor,
    ColorsApp.amberColor
  ];
  var colorizeTextStyle = const TextStyle(
    fontSize: 36,
    fontFamily: 'Horizon',
  );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 120, right: 15, left: 15),
        child: Column(children: [
          AnimatedTextKit(
            animatedTexts: [
              ColorizeAnimatedText("Which  Categories do \ you need?",
                  textStyle: colorizeTextStyle, colors: colorizeColors)
            ],
            isRepeatingAnimation: true,
          ),
          const Expanded(child: SizedBox(child: CategoriesWidget()))
        ]),
      ),
    );
  }
}
