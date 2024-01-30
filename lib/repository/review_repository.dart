import 'package:dio/dio.dart';

class ReviewRepository {
  Future<Response> getLessonData(String apiUrl) async {
    Response response = await Dio().get(apiUrl);
    return response;
  }
}
