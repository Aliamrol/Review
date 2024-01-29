part of 'flash_card_bloc.dart';

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
