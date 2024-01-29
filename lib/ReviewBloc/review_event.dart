part of 'review_bloc.dart';

@immutable
abstract class ReviewEvent {}

class ReviewNextEvent extends ReviewEvent {}

class ReviewBackEvent extends ReviewEvent {}

class ReviewInitialEvent extends ReviewEvent{}
