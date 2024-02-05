import 'package:freezed_annotation/freezed_annotation.dart';

import '../Entities/lesson_entity.dart';

part 'review_state.freezed.dart';

@freezed
class ReviewStates with _$ReviewState {
  const factory ReviewStates.loading() = _ReviewLoadingState;

  const factory ReviewStates.error(String? msg, int? statusCode) =
      _ReviewErrorState;

  const factory ReviewStates.moveToNextCard() = _ReviewMoveToNextCardState;

  const factory ReviewStates.moveToPreviousCard() =
      _ReviewMoveToPreviousCardState;

  const factory ReviewStates.complete({required LessonEntity lessonEntity}) =
      _ReviewCompleteState;

  const factory ReviewStates.restartReview() = _ReviewRestartState;

  const factory ReviewStates.idle() = _ReviewIdleState;
}
