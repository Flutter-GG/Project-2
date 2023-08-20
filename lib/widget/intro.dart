import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:project_2/constant/colors.dart';
import 'package:project_2/screens/login.dart';
import 'package:project_2/screens/welcome.dart';

class IntroScreenDefault extends StatefulWidget {
  const IntroScreenDefault({super.key});

  @override
  State<IntroScreenDefault> createState() => IntroScreenDefaultState();
}

class IntroScreenDefaultState extends State<IntroScreenDefault> {
  List<ContentConfig> listContentConfig = [];

  @override
  void initState() {
    super.initState();

    listContentConfig.add(
      const ContentConfig(
        title: "Open Limits",
        styleTitle: TextStyle(
            color: WColors.orange, fontWeight: FontWeight.w300, fontSize: 40),
        description: "make you shooping experince better!",
        styleDescription: TextStyle(fontSize: 24, color: WColors.darkRed),
        pathImage: "assets/images/intro.jfif",
        widthImage: 250,
        heightImage: 250,
        backgroundColor: WColors.backG,
      ),
    );
  }

  void onDonePress() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Welcome()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      key: UniqueKey(),
      listContentConfig: listContentConfig,
      onDonePress: onDonePress,
    );
  }
}
