import 'package:flutter/material.dart';
import 'package:project2/components/buttons/button.dart';
import 'package:project2/components/buttons/choice_chip_widget.dart';
import 'package:project2/components/general/login_form.dart';
import 'package:project2/components/general/singup_form.dart';
import 'package:project2/constants/app_styles.dart';
import 'package:project2/constants/constants.dart';
import 'package:project2/data/global_data.dart';
import 'package:project2/extensions/navigator.dart';
import 'package:project2/screens/products_screen.dart';

class FormComponent extends StatefulWidget {
  const FormComponent({super.key, required this.type});
  final String type;

  @override
  State<FormComponent> createState() => _FormComponentState();
}

class _FormComponentState extends State<FormComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        height200,
        const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start, // ! have to check later
            children: [
              ChoiceChipWidget(), // Sing up & Login buttons
            ],
          ),
        ),
        height24,
        SizedBox(
          height: 360,
          // color: Colors.pink,
          child: Column(
            children: [
              Container(
                child: (choiceType == "Sign Up"
                    ? const SingupForm()
                    : const LoginForm()),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 160,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(
                    color: whiteColor,
                    backgroundColor: primaryColor,
                    text: "$choiceType",
                    onPress: () {
                      for (var element in listUsers) {
                        if (element.id.toString() ==
                                IdController.text.toString() &&
                            element.password.toString() ==
                                passwordController.text.toString()) {
                          userName = element.name!;
                          context.getNavigator(const ProductsScreen());
                        }
                        setState(() {});
                      }
                    },
                    size: 25,
                    isBold: true),
              ]),
        )
      ],
    );
  }
}
