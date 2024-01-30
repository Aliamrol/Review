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

class ReviewBloc extends Bloc<ReviewEvent, FlashCardState> {
  late LessonEntity lessonEntity;

  // online
  // late Map<String, dynamic> json;
  //offline

  Map<String, dynamic>? json;
  Response? response;

  ReviewBloc() : super(FlashCardLoadingState()) {
    on<ReviewEvent>((event, emit) async {
      if (event is ReviewInitialEvent) {
        emit(FlashCardLoadingState());
        try {
          response = await locator
              .get<ReviewRepository>()
              .getLessonData(Data.lessonApiUrl);
          json = response?.data;
          print("Status Code: ${response?.statusCode}");
          print("Status msg : ${response?.statusMessage}");
          lessonEntity = LessonEntity.fromJson(json!);
          emit(FlashCardCompleteState.FlashCardCompleteState(lessonEntity));
        } catch (e) {
          print("Status Code: ${response?.statusCode}");
          print("Status msg : ${response?.statusMessage}");
          print(e);
          emit(FlashCardErrorState(e.toString(), response?.statusCode));
        }
      }
    });
  }
}
