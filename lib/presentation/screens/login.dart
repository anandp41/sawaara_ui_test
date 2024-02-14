import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:screens/presentation/screens/login/widgets/primary_button.dart';
import 'package:screens/utils/validations.dart';
import 'package:velocity_bloc/velocity_bloc.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../core/textstyles.dart';
import '../../data/repositories/repository.dart';
import 'login/login_view_model.dart';

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
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 4.0.h),
                    child: TextFormField(
                        controller: loginViewModel.emailController,
                        decoration: InputDecoration(
                          hintText: 'Enter Email or Mob No.',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.r)),
                        ),
                        validator: (email) {
                          if (email!.isEmpty) {
                            return "Email is empty";
                          } else if (!email.isValidEmail) {
                            return "Invalid Email Address";
                          }

                          return null;
                        }),
                  ),
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
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 4.0.h),
                    child: TextFormField(
                      controller: loginViewModel.passwordController,
                      decoration: InputDecoration(
                          hintText: 'Enter Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.r))),
                      validator: (password) {
                        if (password!.isEmpty) {
                          return "Password is empty";
                        } else if (!password.isValidPassword) {
                          return "Invalid Password";
                        }

                        return null;
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                              width: 24.w,
                              child: Checkbox(
                                  value: false,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.r)),
                                  onChanged: (value) {})),
                          SizedBox(
                            width: 6.w,
                          ),
                          const Text(
                            'Remember Me',
                            style: normalSubtleWhiteTextStyle,
                          )
                        ],
                      ),
                      const Text(
                        'Forgot Password',
                        style: subTextfieldTextStyle,
                      )
                    ],
                  ),
                  Padding(
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
                                    if (loginViewModel.formKey.currentState!
                                        .validate()) {
                                      loginViewModel.login(context);
                                    } else {
                                      VxToast.show(context,
                                          msg: ' Invalid ID Password');
                                    }
                                  }
                                : () {});
                      },
                    ),
                  ),
                  const Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: Divider()),
                      Text(' or '),
                      Expanded(child: Divider()),
                    ],
                  ),
                  SizedBox(height: 35.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r)),
                          child: Image.asset(
                            'assets/google.png',
                            height: 35.h,
                            width: 35.w,
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r)),
                          child: Image.asset(
                            'assets/linkedin.png',
                            height: 35.h,
                            width: 35.w,
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r)),
                          child: Image.asset(
                            'assets/facebook.png',
                            height: 35.h,
                            width: 35.w,
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r)),
                          child: Image.asset(
                            'assets/instagram.png',
                            height: 35.h,
                            width: 35.w,
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r)),
                          child: Image.asset(
                            'assets/whatsapp.png',
                            height: 35.h,
                            width: 35.w,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 35.h),
                  const Row(
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
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  const Row(
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
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'By continuing, you agree to',
                      style: termsSubtleWhiteTextStyle,
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Promilo's ",
                          style: termsSubtleWhiteTextStyle,
                        ),
                        Text(
                          'Terms of Use & Privacy Policy.',
                          style: normalBlackTextStyle,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
