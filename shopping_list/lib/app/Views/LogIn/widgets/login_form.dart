import 'package:flutter/material.dart';

import '../../../utils/shared/custom_text_field.dart';
import '../../../utils/shared/spacing.dart';

class LogInForm extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const LogInForm({
    Key? key,
    required this.emailController,
    required this.passwordController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ResponsiveSpacing.height(context, xxlarge),
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
      ],
    );
  }
}
