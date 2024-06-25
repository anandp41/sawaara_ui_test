import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/validations.dart';
import '../login_view_model.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    super.key,
    required this.loginViewModel,
  });

  final LoginViewModel loginViewModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.0.h),
      child: TextFormField(
          controller: loginViewModel.emailController,
          decoration: InputDecoration(
            hintText: 'Enter Email or Mob No.',
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15.r)),
          ),
          validator: (email) {
            if (email!.isEmpty) {
              return "Email is empty";
            } else if (!email.isValidEmail) {
              return "Invalid Email Address";
            }

            return null;
          }),
    );
  }
}
