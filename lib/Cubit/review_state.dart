part of 'review_cubit.dart';

@freezed
class ReviewState with _$ReviewState {
  const factory ReviewState.initial() = _Initial;

  const factory ReviewState.next() = _Next;

  const factory ReviewState.previous() = _Previous;

  const factory ReviewState.again() = _Again;

  const factory ReviewState.error(String? msg, int? statusCode) = _Error;

  const factory ReviewState.loading() = _Loading;

  const factory ReviewState.complete({required LessonEntity lessonEntity}) =
      _Complete;
  const factory ReviewState.idle() = _Idle;
}
