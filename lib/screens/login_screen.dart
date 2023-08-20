import 'package:flutter/material.dart';
import 'package:project2/components/buttons/choice_chip_widget.dart';
import 'package:project2/components/general/custom_clip_path.dart';
import 'package:project2/components/general/form_component.dart';
import 'package:project2/constants/constants.dart';
import 'package:project2/data/global_data.dart';
import 'package:project2/data/user_data.dart';
import 'package:project2/models/user_model.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
    for (var element in userData) {
      listUsers.add(User.fromJson(element));
    }
  }
  @override
  Widget build(BuildContext context) {
    choiceType == null ? "Sign Up" : "Sign Up";
    return Scaffold(
        resizeToAvoidBottomInset:false, 
        body: SafeArea(
            child: Stack(
          children: [
            Container(
              child: Image.network("https://img.freepik.com/free-photo/ecofriendly-beauty-product_23-2150669154.jpg?w=360&t=st=1692556244~exp=1692556844~hmac=8fb1eca31a323195d8d8da53e8a5a56fd480707d2469692e79219575daae6704",
              fit: BoxFit.cover,
              height: AppLayout.getSize(context).height,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 320),
              height: AppLayout.getSize(context).height,
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 160),
              child: ClipPath(
                clipper: CustomClipPath(), // show a wave curve
                child: Container(
                  color: Colors.white,
                  height: 160,
                ),
              ),
            ),
            FormComponent(type:choiceType.toString() ), //! dont Use const , 
          ],
        )));
  }
}
