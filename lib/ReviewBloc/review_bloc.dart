import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:uni/locator.dart';
import 'package:uni/repository/review_repository.dart';
import '../Entities/lesson_entity.dart';
import '../repository/data.dart';
import 'review_state.dart';

part 'review_event.dart';

class ReviewBloc extends Bloc<ReviewEvent, ReviewState> {
  late LessonEntity lessonEntity;

  // online
  // late Map<String, dynamic> json;
  //offline

  Map<String, dynamic>? json;
  Response? response;

  ReviewBloc() : super(const ReviewState.Loading()) {
    on<ReviewEvent>((event, emit) async {
      if (event is ReviewInitialEvent) {
        emit(const ReviewState.Loading());
        print("emit Loading");
        try {
          response = await locator
              .get<ReviewRepository>()
              .getLessonData(Data.lessonApiUrl);
          json = response?.data;
          lessonEntity = LessonEntity.fromJson(json!);
          emit(ReviewState.Complete(lessonEntity: lessonEntity));
          print("emit Complete");
        } catch (e) {
          if (kDebugMode) {
            print(e);
          }
          emit(ReviewState.Error(e.toString(), response?.statusCode));
        }
      }
      if (event is ReviewNextEvent) {
        emit(const ReviewState.Next());
      }
      if (event is ReviewPreviousEvent) {
        emit(const ReviewState.Previous());
      }
      if (event is ReviewAgainEvent) {
        emit(const ReviewState.Again());
      }
    });
  }
}
