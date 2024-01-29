import 'package:dio/dio.dart';

import 'data.dart';

class Repository {
  String lessonApiUrl = Data.lessonApiUrl;

  static Future<Map<String, dynamic>> getLessonData(String apiUrl) async {
    var response = await Dio().get(apiUrl);
    return response.data;
  }
}
