import 'package:flutter/material.dart';

import '../../../../core/textstyles.dart';

class LoginHereSignUp extends StatelessWidget {
  const LoginHereSignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Login Here',
          style: normalBlueTextStyle,
        ),
        Text(
          'Sign Up',
          style: normalBlueTextStyle,
        )
      ],
    );
  }
}
