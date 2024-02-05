import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:uni/Entities/card_entity.dart';
import 'package:uni/locator.dart';
import 'package:uni/repository/review_repository.dart';
import '../Entities/lesson_entity.dart';
import '../repository/url_utils.dart';
import 'review_state.dart';

part 'review_event.dart';

class ReviewBloc extends Bloc<ReviewEvent, ReviewStates> {
  late LessonEntity lessonEntity;

  List<CardEntity> getCards() {
    return lessonEntity.cards;
  }

  ReviewBloc() : super(const ReviewStates.loading()) {
    on<ReviewEvent>((event, emit) async {
      if (event is ReviewLoadCardsEvent) {
        emit(const ReviewStates.loading());
        Response? response;
        try {
          response = await locator
              .get<ReviewRepository>()
              .getLessonData(UrlUtils.lessonApiUrl);
          lessonEntity = LessonEntity.fromJson(response.data);
          emit(ReviewStates.complete(lessonEntity: lessonEntity));
        } catch (e) {
          if (kDebugMode) {
            print(e);
          }
          emit(ReviewStates.error(e.toString(), response?.statusCode));
        }
      }
      if (event is ReviewMoveToNextCardEvent) {
        emit(const ReviewStates.idle());
        emit(const ReviewStates.moveToNextCard());
      }
      if (event is ReviewMoveToPreviousCardEvent) {
        emit(const ReviewStates.idle());
        emit(const ReviewStates.moveToPreviousCard());
      }
      if (event is ReviewRestartCardsEvent) {
        emit(const ReviewStates.idle());
        emit(const ReviewStates.restartReview());
      }
    });
  }
}
