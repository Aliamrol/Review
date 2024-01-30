part of 'review_bloc.dart';

@immutable
abstract class ReviewEvent {}

class ReviewInitialEvent extends ReviewEvent{}

class ReviewNextEvent extends ReviewEvent {}

class ReviewPreviousEvent extends ReviewEvent {}

