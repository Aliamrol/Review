import 'package:freezed_annotation/freezed_annotation.dart';

import '../Entities/lesson_entity.dart';

part 'review_state.freezed.dart';

@freezed
class ReviewState with _$ReviewState {
  const factory ReviewState.loading() = _ReviewLoadingState;

  const factory ReviewState.error(String? msg, int? statusCode) =
      _ReviewErrorState;

  const factory ReviewState.next() = _ReviewNextState;

  const factory ReviewState.previous() = _ReviewPreviousState;

  const factory ReviewState.complete({required LessonEntity lessonEntity}) =
      _ReviewCompleteState;

  const factory ReviewState.again() = _ReviewAgainState;
  const factory ReviewState.idle() = _ReviewIdleState;
}
