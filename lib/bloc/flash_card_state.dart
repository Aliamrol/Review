part of 'flash_card_bloc.dart';

abstract class FlashCardState {
  late String imageUrl;
  late String originalTitle;
  late String translation;
  late String pronunciation;
  late final CardEntity cardEntity;

}

class FlashCardInitialState extends FlashCardState {
  FlashCardPreviousState() {
    this.imageUrl = "";
    this.originalTitle = "Welcome";
    this.pronunciation = "English , Persian";
    this.translation = "Thank You";
  }
}

class FlashCardNextState extends FlashCardState {
  FlashCardNextState(
      {required imageUrl,
      required originalTitle,
      required translation,
      required pronunciation}) {
    this.imageUrl = imageUrl;
    this.originalTitle = originalTitle;
    this.translation = translation;
    this.pronunciation = pronunciation;
  }
}

class FlashCardBackState extends FlashCardState {
  FlashCardBackState(
      {required imageUrl,
      required originalTitle,
      required translation,
      required pronunciation}) {
    this.imageUrl = imageUrl;
    this.originalTitle = originalTitle;
    this.translation = translation;
    this.pronunciation = pronunciation;
  }
}
