import 'package:flutter/material.dart';
import 'package:shopping_list/app/utils/shared/spacing.dart';
import '../../../utils/shared/custom_text_field.dart';

class SignUpForm extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const SignUpForm({
    Key? key,
    required this.nameController,
    required this.emailController,
    required this.passwordController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ResponsiveSpacing.height(context, xxlarge),
      CustomTextField(
        title: 'Name',
        hint: 'Your Name',
        controller: nameController,
        prefixIcon: Icons.person,
      ),
      ResponsiveSpacing.height(context, small),
      CustomTextField(
        title: 'Email',
        hint: 'Your Email',
        controller: emailController,
        prefixIcon: Icons.mail,
      ),
      ResponsiveSpacing.height(context, small),
      CustomTextField(
        title: 'Password',
        hint: 'Your Password',
        controller: passwordController,
        prefixIcon: Icons.lock,
      ),
    ]);
  }
}
