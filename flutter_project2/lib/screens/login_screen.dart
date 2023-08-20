// ignore_for_file: must_be_immutable

import 'package:elegant_notification/elegant_notification.dart';
import 'package:elegant_notification/resources/arrays.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project2/components/appbar_widget.dart';
import 'package:flutter_project2/components/button_widget.dart';
import 'package:flutter_project2/components/image_widget.dart';
import 'package:flutter_project2/components/textfield_widget.dart';
import 'package:flutter_project2/constants/colors.dart';
import 'package:flutter_project2/constants/spaces.dart';
import 'package:flutter_project2/utils/extentions/naviagator.dart';
import 'package:flutter_project2/utils/extentions/sizes.dart';
import 'package:flutter_project2/main.dart';
import 'package:flutter_project2/screens/home_screen.dart';
import 'package:flutter_project2/screens/register_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarWidget('Login'),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ImageWidget(
                imgPath: 'assets/images/init_img.jpg',
                imgWidth: context.getWidth(),
                imgHeight: 330,
                isNetwork: false,
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextfieldWidget(
                        suffiIcon: const Icon(Icons.person),
                        label: 'User Name:',
                        controller: nameController),
                    Spaces.spaceH10,
                    TextfieldWidget(
                        suffiIcon: const Icon(Icons.password),
                        label: 'password:',
                        controller: passwordController),
                    Spaces.spaceH20,
                    ButtonWidget(
                        text: 'Login',
                        buttonAction: () {
                          bool isNotFound = true;
                          for (var object in usersList) {
                            if (nameController.text.trim().toLowerCase() ==
                                    object.userName &&
                                object.password ==
                                    int.parse(passwordController.text)) {
                              userName = nameController.text
                                  .trim()
                                  .toLowerCase(); // to use it in my screens
                              HomeScreen().push(context);
                              isNotFound = false;
                            } else if (isNotFound == true) {
                              ElegantNotification.error(
                                width: 360,
                                height: 100,
                                notificationPosition:
                                    NotificationPosition.center,
                                animation: AnimationType.fromTop,
                                title: const Text('Error'),
                                description: const Text(
                                    'Your UserName or password is wrong please try again'),
                                onDismiss: () {},
                              ).show(context);
                            }
                          }
                        },
                        buttonColor: AppColors.primary),
                    TextButton(
                        onPressed: () {
                          RegisterScreen().push(context);
                        },
                        child: Text(
                          'You don\'t hava account? Register Here!',
                          style: TextStyle(
                              color: AppColors.secondry, fontSize: 17),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
