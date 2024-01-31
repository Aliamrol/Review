import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
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

  ReviewBloc() : super(ReviewLoadingState()) {
    on<ReviewEvent>((event, emit) async {
      if (event is ReviewInitialEvent) {
        emit(ReviewLoadingState());
        try {
          response = await locator
              .get<ReviewRepository>()
              .getLessonData(Data.lessonApiUrl);
          json = response?.data;
          lessonEntity = LessonEntity.fromJson(json!);
          emit(ReviewCompleteState.FlashCardCompleteState(lessonEntity));
        } catch (e) {
          if (kDebugMode) {
            print(e);
          }
          emit(ReviewErrorState(e.toString(), response?.statusCode));
        }
      }
      if (event is ReviewNextEvent) {
        emit(ReviewNextState());
      }
      if (event is ReviewPreviousEvent) {
        emit(ReviewPreviousState());
      }
      if (event is ReviewAgainEvent){
        emit(ReviewAgainState());
      }
    });
  }
}
