part of 'flash_card_bloc.dart';

@immutable
abstract class FlashCardEvent {}

class FlashCardNextEvent extends FlashCardEvent {}

class FlashCardBackEvent extends FlashCardEvent {}

class FlashCardInitialEvent extends FlashCardEvent{}
