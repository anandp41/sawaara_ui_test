import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/validations.dart';
import '../login_view_model.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    super.key,
    required this.loginViewModel,
  });

  final LoginViewModel loginViewModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.0.h),
      child: TextFormField(
        controller: loginViewModel.passwordController,
        decoration: InputDecoration(
            hintText: 'Enter Password',
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15.r))),
        validator: (password) {
          if (password!.isEmpty) {
            return "Password is empty";
          } else if (!password.isValidPassword) {
            return "Invalid Password";
          }

          return null;
        },
      ),
    );
  }
}
