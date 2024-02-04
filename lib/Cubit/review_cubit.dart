import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uni/Entities/lesson_entity.dart';
import 'package:uni/locator.dart';
import 'package:uni/repository/data.dart';
import 'package:uni/repository/review_repository.dart';

part 'review_state.dart';

part 'review_cubit.freezed.dart';

class ReviewCubit extends Cubit<ReviewState> {
  late LessonEntity lessonEntity;

  Map<String, dynamic>? json;
  Response? response;

  List<Map<String, dynamic>> getCards() {
    return lessonEntity.cards;
  }

  ReviewCubit() : super(const ReviewState.loading());

  Future<void> initial() async {
    emit(const ReviewState.loading());
    try {
      response = await locator
          .get<ReviewRepository>()
          .getLessonData(Data.lessonApiUrl);
      json = response?.data;
      lessonEntity = LessonEntity.fromJson(json!);
      emit(ReviewState.complete(lessonEntity: lessonEntity));
    } catch (e) {
      print("Error inital func ${e}");
      emit(ReviewState.error(e.toString(), null));
    }
  }

  void next() {
    emit(const ReviewState.idle());
    emit(const ReviewState.next());
  }

  void previous() {
    emit(const ReviewState.idle());
    emit(const ReviewState.previous());
  }

  void again(){
    emit(const ReviewState.idle());
    emit(const ReviewState.again());
  }
}
