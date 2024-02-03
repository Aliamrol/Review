import 'package:freezed_annotation/freezed_annotation.dart';

import '../Entities/lesson_entity.dart';

@freezed
class ReviewState with _$ReviewState {
  const factory ReviewState.Loading() = _ReviewLoadingState;

  const factory ReviewState.Error() = _ReviewErrorState;

  const factory ReviewState.Next() = _ReviewNextState;

  const factory ReviewState.Previous() = _ReviewPreviousState;

  const factory ReviewState.Complete() = _ReviewCompleteState;
}

//
// class ReviewCompleteState extends ReviewState {
//   ReviewCompleteState.FlashCardCompleteState(lessonEntity) {
//     this.lessonEntity = lessonEntity;
//   }
// }
//

//   ReviewErrorState(this.msgError, this.status);
// }
//
// class ReviewNextState extends ReviewState {}
//
// class ReviewPreviousState extends ReviewState {}
//
// class ReviewAgainState extends ReviewState {}
