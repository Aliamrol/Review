import 'package:dio/dio.dart';

class ReviewRepository {
  Dio dio;

  ReviewRepository(this.dio);

  Future<Response> getLessonData(String apiUrl) async {
    Response response = await dio.get(apiUrl);
    return response;
  }
}
