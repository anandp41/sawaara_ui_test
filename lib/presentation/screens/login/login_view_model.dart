import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:velocity_bloc/velocity_bloc.dart';

import '../../../data/repositories/repository.dart';
import '../home/home.dart';

class LoginViewModel {
  final Repository repository;
  LoginViewModel({required this.repository});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final isLoadingBloc = VelocityBloc<bool>(false);

  Future<void> login(context) async {
    isLoadingBloc.onUpdateData(true);
    var bytes = utf8.encode(passwordController.text.trim());
    String hash = sha256.convert(bytes).toString(); //Conversion to SHA 256
    var loginData = await repository.authRepo.userLogin(
        email: emailController.text.trim(), password: hash, context: context);
    if (loginData.response?.accessToken != null) {
      Navigator.push(context, MaterialPageRoute(builder: (_) => const Home()));
    }
    isLoadingBloc.onUpdateData(false);
  }
}
