import 'package:flutter/material.dart';
import 'package:project2/components/text/text_widget.dart';
import 'package:project2/constants/app_styles.dart';
import 'package:project2/screens/login_screen.dart';


String? choiceType;

class ChoiceChipWidget extends StatefulWidget {
  const ChoiceChipWidget({super.key});

  @override
  State<ChoiceChipWidget> createState() => _ChoiceChipWidgetState();
}

class _ChoiceChipWidgetState extends State<ChoiceChipWidget> {
  final List<String> choice = [
    'Sign Up',
    'Login',
  ];
  @override
  Widget build(BuildContext context) {
    choiceType ??= "Sign Up";
    bool isNull = (choiceType == null);
    return Wrap(
      spacing: 10.0,
      children: List<Widget>.generate(
        choice.length,
        (index) {
          return ChoiceChip(
            labelPadding:
                const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            padding: const EdgeInsets.symmetric(horizontal: 12),
            selectedColor: primaryColor,
            label: TextWidget(
              text: isNull ? "Sign Up" : choice[index],
              // color: choiceType == choice[index] ? Colors.white : Colors.black, // ! ///////////////////
              size: 18,
            ),
            selected: choiceType == choice[index],

            onSelected: (selected) {
              if (selected) {
                setState(() {
                context.findAncestorStateOfType<LoginScreenState>()?.setState(() {}); // TODO have chack
                  choiceType = choice[index];
                });
              }else{
                choiceType = "Sign Up";
                setState(() {
                  
                });
              }
            },
          );
        },
      ),
    );
  }
}
