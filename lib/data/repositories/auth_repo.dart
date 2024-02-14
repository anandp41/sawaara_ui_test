import 'dart:convert';

import 'package:flutter/material.dart';
import '../../presentation/screens/login/login_model.dart';
import '../data_sources/remote/api_client.dart';

class AuthRepo extends ApiClient {
  AuthRepo();
  Future<LoginModel> userLogin(
      {required String email,
      required String password,
      required context}) async {
    Map<String, dynamic> body = {
      "username": email,
      "password": password,
      "grant_type": "password"
    };
    try {
      final response = await postRequest(body: body);
      if (response.statusCode == 200) {
        final responseData = LoginModel.fromJson(
            jsonDecode(response.body) as Map<String, dynamic>);
        return responseData;
      }
    } on Exception catch (e) {
      //VxToast.show(context, msg: e.toString());
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
    }
    return LoginModel();
  }
}
