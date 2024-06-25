import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

import '../../../core/strings.dart';
import 'api_exception.dart';

class ApiClient {
  Future postRequest({
    required Map<String, dynamic> body,
  }) async {
    //Header added here
    var header = headerForApi;
    try {
      var uri = Uri.parse(apiUrl);
      var response = await http.post(uri, body: body, headers: header);

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
