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
  
  Map<String, dynamic>? json;
  Response? response;

  List<Map<String, dynamic>> getCards() {
    return lessonEntity.cards;
  }

  ReviewBloc() : super(const ReviewState.loading()) {
    on<ReviewEvent>((event, emit) async {
      if (event is ReviewInitialEvent) {
        emit(const ReviewState.loading());
        try {
          response = await locator
              .get<ReviewRepository>()
              .getLessonData(Data.lessonApiUrl);
          json = response?.data;
          lessonEntity = LessonEntity.fromJson(json!);
          emit(ReviewState.complete(lessonEntity: lessonEntity));
        } catch (e) {
          if (kDebugMode) {
            print(e);
          }
          emit(ReviewState.error(e.toString(), response?.statusCode));
        }
      }
      if (event is ReviewNextEvent) {
        emit(const ReviewState.idle());
        emit(const ReviewState.next());
      }
      if (event is ReviewPreviousEvent) {
        emit(const ReviewState.idle());
        emit(const ReviewState.previous());
      }
      if (event is ReviewAgainEvent) {
        emit(const ReviewState.idle());
        emit(const ReviewState.again());
      }
    });
  }
}
