import 'package:flutter/material.dart';
import 'package:shopping_list/app/utils/shared/custom_text.dart';

import '../../../utils/constants/strings.dart';
import '../../../utils/shared/spacing.dart';

class IntroTitle extends StatelessWidget {
  const IntroTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 100.0, left: 20.0, right: 20.0),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: LargeTitle(text: introTitlePart1),
            ),
            ResponsiveSpacing.height(context, small),
            const Align(
              alignment: Alignment.topRight,
              child: LargeTitle(text: introTitlePart2),
            ),
          ],
        ),
      ),
    );
  }
}
