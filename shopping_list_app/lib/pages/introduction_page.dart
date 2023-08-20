import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shopping_list_app/pages/home_page.dart';
import 'package:shopping_list_app/utils/colors_app.dart';
import 'package:shopping_list_app/widgets/appBar_widget.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shopping_list_app/widgets/text_widget.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        image: Center(
          child: Image.asset(
            "assets/images/img_1.png",
          ),
        ),
        title: 'Shop better together',
        body: "",
      ),
      PageViewModel(
        title: 'Welcome to our app!',
        body: "",
        image: Image.asset("assets/images/img_2.png"),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Center(
        child: IntroductionScreen(
          globalBackgroundColor: ColorsApp.whiteColor,
          onDone: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomePage()));
          },
          onSkip: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomePage()));
          },
          done: Animate(
            effects: [ const FadeEffect(), SaturateEffect()],
            child: const TextWidget(
                text: "Go!!",
                size: 18,
                textColor: ColorsApp.primeryColor,
                isFontWeight: true),
          ),
          pages: getPages(),
          showNextButton: true,
          next: const Icon(
            Icons.arrow_forward,
            color: ColorsApp.primeryColor,
          ),
          showBackButton: false,
          showSkipButton: true,
          skip: Animate(
            effects: [ FadeEffect(), SaturateEffect()],
            child: const TextWidget(
                text: "Skip",
                size: 18,
                textColor: ColorsApp.amberColor,
                isFontWeight: true),
          ),
          dotsDecorator: const DotsDecorator(
              size: Size.square(10.0),
              activeSize: Size(20, 10),
              color: Colors.black26,
              activeColor: ColorsApp.primeryColor,
              spacing: EdgeInsets.symmetric(horizontal: 3)),
        ),
      ),
    );
  }
}
