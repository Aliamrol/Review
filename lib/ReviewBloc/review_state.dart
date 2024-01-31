import '../Entities/lesson_entity.dart';

abstract class ReviewState {
  late LessonEntity lessonEntity;
}

class ReviewLoadingState extends ReviewState {
  ReviewLoadingState();
}

class ReviewCompleteState extends ReviewState {
  ReviewCompleteState.FlashCardCompleteState(lessonEntity) {
    this.lessonEntity = lessonEntity;
  }
}

class ReviewErrorState extends ReviewState {
  String? msgError;
  int? status;

  ReviewErrorState(this.msgError, this.status);
}

class ReviewNextState extends ReviewState {}

class ReviewPreviousState extends ReviewState {}

class ReviewAgainState extends ReviewState {}
