import 'package:dio/dio.dart';

class ReviewRepository {
  Future<Map<String, dynamic>> getLessonData(String apiUrl) async {
    var response = await Dio().get(apiUrl);
    return response.data;
  }
}
