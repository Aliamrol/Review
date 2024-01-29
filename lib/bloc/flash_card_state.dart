import '../models/lesson_entity.dart';

abstract class FlashCardState {
  late LessonEntity lessonEntity;
}

class FlashCardLoadingState extends FlashCardState {
  FlashCardLoadingState();
}

class FlashCardCompleteState extends FlashCardState {
  FlashCardCompleteState.FlashCardCompleteState(lessonEntity) {
    this.lessonEntity = lessonEntity;
  }
}

class FlashCardErrorState extends FlashCardState {}

// Error State for network
