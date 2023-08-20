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
import 'package:flutter_project2/data/data_model.dart';
import 'package:flutter_project2/utils/extentions/naviagator.dart';
import 'package:flutter_project2/utils/extentions/sizes.dart';
import 'package:flutter_project2/main.dart';
import 'package:flutter_project2/screens/login_screen.dart';
import 'package:flutter_project2/utils/helpers.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarWidget('Register'),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ImageWidget(
                imgPath: 'assets/images/list_img.png',
                imgWidth: context.getWidth(),
                imgHeight: 250,
                isNetwork: false,
              ),
              Spaces.spaceH20,
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
                        suffiIcon: const Icon(Icons.email),
                        label: 'Email',
                        controller: emailController),
                    Spaces.spaceH10,
                    TextfieldWidget(
                        suffiIcon: const Icon(Icons.password),
                        label: 'password:',
                        controller: passwordController),
                    Spaces.spaceH20,
                    ButtonWidget(
                        text: 'Register',
                        buttonAction: () {
                          if (nameController.text.isEmpty &&
                              emailController.text.isEmpty &&
                              passwordController.text.isEmpty) {
                            ElegantNotification.info(
                              width: 360,
                              height: 100,
                              notificationPosition: NotificationPosition.center,
                              animation: AnimationType.fromTop,
                              title: const Text('info'),
                              description: const Text(
                                  'Please don\'t leave any field empty'),
                              onDismiss: () {},
                            ).show(context);
                          } else if(!isUserExist(nameController.text.trim().toLowerCase())){
                            final UsersModel object = UsersModel(
                                userName:
                                    nameController.text.trim().toLowerCase(),
                                email:
                                    emailController.text.trim().toLowerCase(),
                                password:
                                    int.parse(passwordController.text.trim()));
                            usersList.add(object);
                            LoginScreen().push(context);
                          }else{
                            ElegantNotification.error(
                              width: 360,
                              height: 100,
                              notificationPosition: NotificationPosition.center,
                              animation: AnimationType.fromTop,
                              title: const Text('error'),
                              description: const Text(
                                  'this user name exist please choose another one'),
                              onDismiss: () {},
                            ).show(context);
                          }
                        },
                        buttonColor: AppColors.primary),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
