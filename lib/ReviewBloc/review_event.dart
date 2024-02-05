part of 'review_bloc.dart';

@immutable
abstract class ReviewEvent {}

class ReviewLoadCardsEvent extends ReviewEvent {}

class ReviewMoveToNextCardEvent extends ReviewEvent {}

class ReviewMoveToPreviousCardEvent extends ReviewEvent {}

class ReviewRestartCardsEvent extends ReviewEvent {}
