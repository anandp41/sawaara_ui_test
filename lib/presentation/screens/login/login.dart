import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/business_user_account_panel.dart';
import 'widgets/email_textfield.dart';
import 'widgets/icons_panel.dart';
import 'widgets/login_here_signup.dart';
import 'widgets/or_banner.dart';
import 'widgets/password_textfield.dart';
import '../../../utils/validations.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../core/textstyles.dart';
import '../../../data/repositories/repository.dart';
import 'login_view_model.dart';
import 'widgets/promilo_terms_banner.dart';
import 'widgets/remember_me_forgot_panel.dart';
import 'widgets/submit_button.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late LoginViewModel loginViewModel;
  late bool isButtonEnabled;
  void checkfieldvalue(String username, String password) {
    if (username.isNotEmptyAndNotNull &&
        username.isValidEmail &&
        password.isNotEmptyAndNotNull &&
        password.isValidPassword) {
      setState(() {
        isButtonEnabled = true;
      });
    } else {
      setState(() {
        isButtonEnabled = false;
      });
    }
  }

  @override
  void initState() {
    isButtonEnabled = false;
    loginViewModel = LoginViewModel(repository: context.read<Repository>());
    loginViewModel.emailController.addListener(() {
      checkfieldvalue(loginViewModel.emailController.text,
          loginViewModel.passwordController.text);
    });
    loginViewModel.passwordController.addListener(() {
      checkfieldvalue(loginViewModel.emailController.text,
          loginViewModel.passwordController.text);
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    loginViewModel.emailController.removeListener(() {
      checkfieldvalue(loginViewModel.emailController.text,
          loginViewModel.passwordController.text);
    });
    loginViewModel.passwordController.removeListener(() {
      checkfieldvalue(loginViewModel.emailController.text,
          loginViewModel.passwordController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: loginViewModel.formKey,
          child: Padding(
            padding: EdgeInsets.only(
                left: 28.0.w, right: 28.w, top: 8.h, bottom: 8.h),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'promilo',
                      style: loginMainHeadingTextStyle,
                    ),
                  ),
                  SizedBox(
                    height: 35.h,
                  ),
                  const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Hi, Welcome Back!',
                        style: headingTextStyle,
                      )),
                  SizedBox(
                    height: 20.h,
                  ),
                  const Text(
                    'Please Sign in to continue',
                    style: textfieldHeading,
                  ),
                  EmailTextField(loginViewModel: loginViewModel),
                  const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Sign in with OTP',
                        style: subTextfieldTextStyle,
                      )),
                  SizedBox(
                    height: 16.h,
                  ),
                  const Text('Password', style: textfieldHeading),
                  PasswordTextField(loginViewModel: loginViewModel),
                  const RememberMeForgotPanel(),
                  SubmitButton(
                      loginViewModel: loginViewModel,
                      isButtonEnabled: isButtonEnabled),
                  const OrBanner(),
                  SizedBox(height: 35.h),
                  const IconsPanel(),
                  SizedBox(height: 25.h),
                  const BusinessUserAccountPanel(),
                  SizedBox(
                    height: 2.h,
                  ),
                  const LoginHereSignUp(),
                  SizedBox(
                    height: 20.h,
                  ),
                  const PromiloTermsBanner(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
