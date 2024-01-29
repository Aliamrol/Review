import 'package:dio/dio.dart';

class Data {
  Dio dio = Dio();

  Future<Map<String, dynamic>> getDataJson(String apiUrl) async {
    var response = await dio.get(apiUrl);
    return response.data;
  }

  Future<int?> postDataJson(json, apiUrl) async {
    var response = await dio.postUri(apiUrl, data: json);
    return response.statusCode;
  }
}
