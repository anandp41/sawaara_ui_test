import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_bloc/velocity_bloc.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../core/colors.dart';
import '../../../../core/strings.dart';
import '../login_view_model.dart';
import 'primary_button.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    super.key,
    required this.loginViewModel,
    required this.isButtonEnabled,
  });

  final LoginViewModel loginViewModel;
  final bool isButtonEnabled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0.h),
      child: BlocBuilder<VelocityBloc<bool>, VelocityState<bool>>(
        bloc: loginViewModel.isLoadingBloc,
        builder: (context, state) {
          return PrimaryButton(
              title: 'Submit',
              isLoading: state.data,
              isEmailPasswordValid: isButtonEnabled,
              onPressed: isButtonEnabled
                  ? () {
                      if (loginViewModel.formKey.currentState!.validate()) {
                        loginViewModel.login(context);
                      } else {
                        VxToast.show(context,
                            bgColor: MyColors.toastBgColor,
                            textColor: MyColors.toastTextColor,
                            msg: invalidEmailPassword,
                            position: VxToastPosition.center);
                      }
                    }
                  : () {});
        },
      ),
    );
  }
}
