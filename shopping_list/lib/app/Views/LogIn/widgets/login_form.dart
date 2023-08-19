import 'package:flutter/material.dart';

import '../../../utils/shared/custom_text_field.dart';
import '../../../utils/shared/spacing.dart';

class LogInForm extends StatelessWidget {
  const LogInForm({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    final TextEditingController yourController = TextEditingController();

    return Column(children: [
      ResponsiveSpacing.height(context, xxlarge),
      CustomTextField(
        title: 'Email',
        hint: 'Your Email',
        controller: yourController,
        prefixIcon: Icons.mail,
      ),
      ResponsiveSpacing.height(context, small),
      CustomTextField(
        title: 'Password',
        hint: 'Your Password',
        controller: yourController,
        prefixIcon: Icons.lock,
      ),
    ]);
  }
}
