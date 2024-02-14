import 'dart:developer';

import 'package:dio/dio.dart';

import 'package:screens/data/data_sources/remote/api_exception.dart';
import 'package:http/http.dart' as http;

class ApiClient {
  Options options = Options();

  Future postRequest({
    required Map<String, dynamic> body,
  }) async {
    //Header added here
    var header = {"Authorization": "Basic UHJvbWlsbzpxNCE1NkBaeSN4MiRHQg=="};
    try {
      log(body.toString());
      var url = Uri.parse('https://apiv2stg.promilo.com/user/oauth/token');
      var response = await http.post(url, body: body, headers: header);

      return response;
    } on DioException catch (e) {
      if (e.response != null) {
        throw ApiException(message: e.response?.statusMessage);
      } else {
        throw ApiException(message: e.message);
      }
    }
  }
}
