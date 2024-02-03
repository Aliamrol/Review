import 'package:freezed_annotation/freezed_annotation.dart';

import '../Entities/lesson_entity.dart';

part 'review_state.freezed.dart';

@freezed
class ReviewState with _$ReviewState {
  const factory ReviewState.Loading() = _ReviewLoadingState;

  const factory ReviewState.Error(String? msg, int? statusCode) =
      _ReviewErrorState;

  const factory ReviewState.Next() = _ReviewNextState;

  const factory ReviewState.Previous() = _ReviewPreviousState;

  const factory ReviewState.Complete({required LessonEntity lessonEntity}) =
      _ReviewCompleteState;

  const factory ReviewState.Again() = _ReviewAgainState;
}
