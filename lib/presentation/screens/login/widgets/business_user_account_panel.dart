import 'package:flutter/material.dart';

import '../../../../core/textstyles.dart';

class BusinessUserAccountPanel extends StatelessWidget {
  const BusinessUserAccountPanel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Business User?',
          style: normalSubtleWhiteTextStyle,
        ),
        Text(
          "Don't have an account",
          style: normalSubtleWhiteTextStyle,
        )
      ],
    );
  }
}
