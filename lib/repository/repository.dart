import 'package:dio/dio.dart';

import 'data.dart';

class Repository {
  Dio dio = Dio();
  String lessonApiUrl = Data.lessonApiUrl;

  Future<Map<String, dynamic>> lessonGetDataJson(String apiUrl) async {
    var response = await dio.get(apiUrl);
    return response.data;
  }

  Future<int?> lessonPostDataJson(json, apiUrl) async {
    var response = await dio.postUri(apiUrl, data: json);
    return response.statusCode;
  }
}
