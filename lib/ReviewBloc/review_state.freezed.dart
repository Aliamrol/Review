// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReviewStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String? msg, int? statusCode) error,
    required TResult Function() moveToNextCard,
    required TResult Function() moveToPreviousCard,
    required TResult Function(LessonEntity lessonEntity) complete,
    required TResult Function() restartReview,
    required TResult Function() idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String? msg, int? statusCode)? error,
    TResult? Function()? moveToNextCard,
    TResult? Function()? moveToPreviousCard,
    TResult? Function(LessonEntity lessonEntity)? complete,
    TResult? Function()? restartReview,
    TResult? Function()? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? msg, int? statusCode)? error,
    TResult Function()? moveToNextCard,
    TResult Function()? moveToPreviousCard,
    TResult Function(LessonEntity lessonEntity)? complete,
    TResult Function()? restartReview,
    TResult Function()? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReviewLoadingState value) loading,
    required TResult Function(_ReviewErrorState value) error,
    required TResult Function(_ReviewMoveToNextCardState value) moveToNextCard,
    required TResult Function(_ReviewMoveToPreviousCardState value)
        moveToPreviousCard,
    required TResult Function(_ReviewCompleteState value) complete,
    required TResult Function(_ReviewRestartState value) restartReview,
    required TResult Function(_ReviewIdleState value) idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReviewLoadingState value)? loading,
    TResult? Function(_ReviewErrorState value)? error,
    TResult? Function(_ReviewMoveToNextCardState value)? moveToNextCard,
    TResult? Function(_ReviewMoveToPreviousCardState value)? moveToPreviousCard,
    TResult? Function(_ReviewCompleteState value)? complete,
    TResult? Function(_ReviewRestartState value)? restartReview,
    TResult? Function(_ReviewIdleState value)? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReviewLoadingState value)? loading,
    TResult Function(_ReviewErrorState value)? error,
    TResult Function(_ReviewMoveToNextCardState value)? moveToNextCard,
    TResult Function(_ReviewMoveToPreviousCardState value)? moveToPreviousCard,
    TResult Function(_ReviewCompleteState value)? complete,
    TResult Function(_ReviewRestartState value)? restartReview,
    TResult Function(_ReviewIdleState value)? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewStatesCopyWith<$Res> {
  factory $ReviewStatesCopyWith(
          ReviewStates value, $Res Function(ReviewStates) then) =
      _$ReviewStatesCopyWithImpl<$Res, ReviewStates>;
}

/// @nodoc
class _$ReviewStatesCopyWithImpl<$Res, $Val extends ReviewStates>
    implements $ReviewStatesCopyWith<$Res> {
  _$ReviewStatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ReviewLoadingStateCopyWith<$Res> {
  factory _$$_ReviewLoadingStateCopyWith(_$_ReviewLoadingState value,
          $Res Function(_$_ReviewLoadingState) then) =
      __$$_ReviewLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ReviewLoadingStateCopyWithImpl<$Res>
    extends _$ReviewStatesCopyWithImpl<$Res, _$_ReviewLoadingState>
    implements _$$_ReviewLoadingStateCopyWith<$Res> {
  __$$_ReviewLoadingStateCopyWithImpl(
      _$_ReviewLoadingState _value, $Res Function(_$_ReviewLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ReviewLoadingState implements _ReviewLoadingState {
  const _$_ReviewLoadingState();

  @override
  String toString() {
    return 'ReviewStates.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ReviewLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String? msg, int? statusCode) error,
    required TResult Function() moveToNextCard,
    required TResult Function() moveToPreviousCard,
    required TResult Function(LessonEntity lessonEntity) complete,
    required TResult Function() restartReview,
    required TResult Function() idle,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String? msg, int? statusCode)? error,
    TResult? Function()? moveToNextCard,
    TResult? Function()? moveToPreviousCard,
    TResult? Function(LessonEntity lessonEntity)? complete,
    TResult? Function()? restartReview,
    TResult? Function()? idle,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? msg, int? statusCode)? error,
    TResult Function()? moveToNextCard,
    TResult Function()? moveToPreviousCard,
    TResult Function(LessonEntity lessonEntity)? complete,
    TResult Function()? restartReview,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReviewLoadingState value) loading,
    required TResult Function(_ReviewErrorState value) error,
    required TResult Function(_ReviewMoveToNextCardState value) moveToNextCard,
    required TResult Function(_ReviewMoveToPreviousCardState value)
        moveToPreviousCard,
    required TResult Function(_ReviewCompleteState value) complete,
    required TResult Function(_ReviewRestartState value) restartReview,
    required TResult Function(_ReviewIdleState value) idle,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReviewLoadingState value)? loading,
    TResult? Function(_ReviewErrorState value)? error,
    TResult? Function(_ReviewMoveToNextCardState value)? moveToNextCard,
    TResult? Function(_ReviewMoveToPreviousCardState value)? moveToPreviousCard,
    TResult? Function(_ReviewCompleteState value)? complete,
    TResult? Function(_ReviewRestartState value)? restartReview,
    TResult? Function(_ReviewIdleState value)? idle,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReviewLoadingState value)? loading,
    TResult Function(_ReviewErrorState value)? error,
    TResult Function(_ReviewMoveToNextCardState value)? moveToNextCard,
    TResult Function(_ReviewMoveToPreviousCardState value)? moveToPreviousCard,
    TResult Function(_ReviewCompleteState value)? complete,
    TResult Function(_ReviewRestartState value)? restartReview,
    TResult Function(_ReviewIdleState value)? idle,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ReviewLoadingState implements ReviewStates {
  const factory _ReviewLoadingState() = _$_ReviewLoadingState;
}

/// @nodoc
abstract class _$$_ReviewErrorStateCopyWith<$Res> {
  factory _$$_ReviewErrorStateCopyWith(
          _$_ReviewErrorState value, $Res Function(_$_ReviewErrorState) then) =
      __$$_ReviewErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String? msg, int? statusCode});
}

/// @nodoc
class __$$_ReviewErrorStateCopyWithImpl<$Res>
    extends _$ReviewStatesCopyWithImpl<$Res, _$_ReviewErrorState>
    implements _$$_ReviewErrorStateCopyWith<$Res> {
  __$$_ReviewErrorStateCopyWithImpl(
      _$_ReviewErrorState _value, $Res Function(_$_ReviewErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_$_ReviewErrorState(
      freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_ReviewErrorState implements _ReviewErrorState {
  const _$_ReviewErrorState(this.msg, this.statusCode);

  @override
  final String? msg;
  @override
  final int? statusCode;

  @override
  String toString() {
    return 'ReviewStates.error(msg: $msg, statusCode: $statusCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewErrorState &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewErrorStateCopyWith<_$_ReviewErrorState> get copyWith =>
      __$$_ReviewErrorStateCopyWithImpl<_$_ReviewErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String? msg, int? statusCode) error,
    required TResult Function() moveToNextCard,
    required TResult Function() moveToPreviousCard,
    required TResult Function(LessonEntity lessonEntity) complete,
    required TResult Function() restartReview,
    required TResult Function() idle,
  }) {
    return error(msg, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String? msg, int? statusCode)? error,
    TResult? Function()? moveToNextCard,
    TResult? Function()? moveToPreviousCard,
    TResult? Function(LessonEntity lessonEntity)? complete,
    TResult? Function()? restartReview,
    TResult? Function()? idle,
  }) {
    return error?.call(msg, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? msg, int? statusCode)? error,
    TResult Function()? moveToNextCard,
    TResult Function()? moveToPreviousCard,
    TResult Function(LessonEntity lessonEntity)? complete,
    TResult Function()? restartReview,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(msg, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReviewLoadingState value) loading,
    required TResult Function(_ReviewErrorState value) error,
    required TResult Function(_ReviewMoveToNextCardState value) moveToNextCard,
    required TResult Function(_ReviewMoveToPreviousCardState value)
        moveToPreviousCard,
    required TResult Function(_ReviewCompleteState value) complete,
    required TResult Function(_ReviewRestartState value) restartReview,
    required TResult Function(_ReviewIdleState value) idle,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReviewLoadingState value)? loading,
    TResult? Function(_ReviewErrorState value)? error,
    TResult? Function(_ReviewMoveToNextCardState value)? moveToNextCard,
    TResult? Function(_ReviewMoveToPreviousCardState value)? moveToPreviousCard,
    TResult? Function(_ReviewCompleteState value)? complete,
    TResult? Function(_ReviewRestartState value)? restartReview,
    TResult? Function(_ReviewIdleState value)? idle,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReviewLoadingState value)? loading,
    TResult Function(_ReviewErrorState value)? error,
    TResult Function(_ReviewMoveToNextCardState value)? moveToNextCard,
    TResult Function(_ReviewMoveToPreviousCardState value)? moveToPreviousCard,
    TResult Function(_ReviewCompleteState value)? complete,
    TResult Function(_ReviewRestartState value)? restartReview,
    TResult Function(_ReviewIdleState value)? idle,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ReviewErrorState implements ReviewStates {
  const factory _ReviewErrorState(final String? msg, final int? statusCode) =
      _$_ReviewErrorState;

  String? get msg;
  int? get statusCode;
  @JsonKey(ignore: true)
  _$$_ReviewErrorStateCopyWith<_$_ReviewErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReviewMoveToNextCardStateCopyWith<$Res> {
  factory _$$_ReviewMoveToNextCardStateCopyWith(
          _$_ReviewMoveToNextCardState value,
          $Res Function(_$_ReviewMoveToNextCardState) then) =
      __$$_ReviewMoveToNextCardStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ReviewMoveToNextCardStateCopyWithImpl<$Res>
    extends _$ReviewStatesCopyWithImpl<$Res, _$_ReviewMoveToNextCardState>
    implements _$$_ReviewMoveToNextCardStateCopyWith<$Res> {
  __$$_ReviewMoveToNextCardStateCopyWithImpl(
      _$_ReviewMoveToNextCardState _value,
      $Res Function(_$_ReviewMoveToNextCardState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ReviewMoveToNextCardState implements _ReviewMoveToNextCardState {
  const _$_ReviewMoveToNextCardState();

  @override
  String toString() {
    return 'ReviewStates.moveToNextCard()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewMoveToNextCardState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String? msg, int? statusCode) error,
    required TResult Function() moveToNextCard,
    required TResult Function() moveToPreviousCard,
    required TResult Function(LessonEntity lessonEntity) complete,
    required TResult Function() restartReview,
    required TResult Function() idle,
  }) {
    return moveToNextCard();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String? msg, int? statusCode)? error,
    TResult? Function()? moveToNextCard,
    TResult? Function()? moveToPreviousCard,
    TResult? Function(LessonEntity lessonEntity)? complete,
    TResult? Function()? restartReview,
    TResult? Function()? idle,
  }) {
    return moveToNextCard?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? msg, int? statusCode)? error,
    TResult Function()? moveToNextCard,
    TResult Function()? moveToPreviousCard,
    TResult Function(LessonEntity lessonEntity)? complete,
    TResult Function()? restartReview,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (moveToNextCard != null) {
      return moveToNextCard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReviewLoadingState value) loading,
    required TResult Function(_ReviewErrorState value) error,
    required TResult Function(_ReviewMoveToNextCardState value) moveToNextCard,
    required TResult Function(_ReviewMoveToPreviousCardState value)
        moveToPreviousCard,
    required TResult Function(_ReviewCompleteState value) complete,
    required TResult Function(_ReviewRestartState value) restartReview,
    required TResult Function(_ReviewIdleState value) idle,
  }) {
    return moveToNextCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReviewLoadingState value)? loading,
    TResult? Function(_ReviewErrorState value)? error,
    TResult? Function(_ReviewMoveToNextCardState value)? moveToNextCard,
    TResult? Function(_ReviewMoveToPreviousCardState value)? moveToPreviousCard,
    TResult? Function(_ReviewCompleteState value)? complete,
    TResult? Function(_ReviewRestartState value)? restartReview,
    TResult? Function(_ReviewIdleState value)? idle,
  }) {
    return moveToNextCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReviewLoadingState value)? loading,
    TResult Function(_ReviewErrorState value)? error,
    TResult Function(_ReviewMoveToNextCardState value)? moveToNextCard,
    TResult Function(_ReviewMoveToPreviousCardState value)? moveToPreviousCard,
    TResult Function(_ReviewCompleteState value)? complete,
    TResult Function(_ReviewRestartState value)? restartReview,
    TResult Function(_ReviewIdleState value)? idle,
    required TResult orElse(),
  }) {
    if (moveToNextCard != null) {
      return moveToNextCard(this);
    }
    return orElse();
  }
}

abstract class _ReviewMoveToNextCardState implements ReviewStates {
  const factory _ReviewMoveToNextCardState() = _$_ReviewMoveToNextCardState;
}

/// @nodoc
abstract class _$$_ReviewMoveToPreviousCardStateCopyWith<$Res> {
  factory _$$_ReviewMoveToPreviousCardStateCopyWith(
          _$_ReviewMoveToPreviousCardState value,
          $Res Function(_$_ReviewMoveToPreviousCardState) then) =
      __$$_ReviewMoveToPreviousCardStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ReviewMoveToPreviousCardStateCopyWithImpl<$Res>
    extends _$ReviewStatesCopyWithImpl<$Res, _$_ReviewMoveToPreviousCardState>
    implements _$$_ReviewMoveToPreviousCardStateCopyWith<$Res> {
  __$$_ReviewMoveToPreviousCardStateCopyWithImpl(
      _$_ReviewMoveToPreviousCardState _value,
      $Res Function(_$_ReviewMoveToPreviousCardState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ReviewMoveToPreviousCardState
    implements _ReviewMoveToPreviousCardState {
  const _$_ReviewMoveToPreviousCardState();

  @override
  String toString() {
    return 'ReviewStates.moveToPreviousCard()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewMoveToPreviousCardState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String? msg, int? statusCode) error,
    required TResult Function() moveToNextCard,
    required TResult Function() moveToPreviousCard,
    required TResult Function(LessonEntity lessonEntity) complete,
    required TResult Function() restartReview,
    required TResult Function() idle,
  }) {
    return moveToPreviousCard();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String? msg, int? statusCode)? error,
    TResult? Function()? moveToNextCard,
    TResult? Function()? moveToPreviousCard,
    TResult? Function(LessonEntity lessonEntity)? complete,
    TResult? Function()? restartReview,
    TResult? Function()? idle,
  }) {
    return moveToPreviousCard?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? msg, int? statusCode)? error,
    TResult Function()? moveToNextCard,
    TResult Function()? moveToPreviousCard,
    TResult Function(LessonEntity lessonEntity)? complete,
    TResult Function()? restartReview,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (moveToPreviousCard != null) {
      return moveToPreviousCard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReviewLoadingState value) loading,
    required TResult Function(_ReviewErrorState value) error,
    required TResult Function(_ReviewMoveToNextCardState value) moveToNextCard,
    required TResult Function(_ReviewMoveToPreviousCardState value)
        moveToPreviousCard,
    required TResult Function(_ReviewCompleteState value) complete,
    required TResult Function(_ReviewRestartState value) restartReview,
    required TResult Function(_ReviewIdleState value) idle,
  }) {
    return moveToPreviousCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReviewLoadingState value)? loading,
    TResult? Function(_ReviewErrorState value)? error,
    TResult? Function(_ReviewMoveToNextCardState value)? moveToNextCard,
    TResult? Function(_ReviewMoveToPreviousCardState value)? moveToPreviousCard,
    TResult? Function(_ReviewCompleteState value)? complete,
    TResult? Function(_ReviewRestartState value)? restartReview,
    TResult? Function(_ReviewIdleState value)? idle,
  }) {
    return moveToPreviousCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReviewLoadingState value)? loading,
    TResult Function(_ReviewErrorState value)? error,
    TResult Function(_ReviewMoveToNextCardState value)? moveToNextCard,
    TResult Function(_ReviewMoveToPreviousCardState value)? moveToPreviousCard,
    TResult Function(_ReviewCompleteState value)? complete,
    TResult Function(_ReviewRestartState value)? restartReview,
    TResult Function(_ReviewIdleState value)? idle,
    required TResult orElse(),
  }) {
    if (moveToPreviousCard != null) {
      return moveToPreviousCard(this);
    }
    return orElse();
  }
}

abstract class _ReviewMoveToPreviousCardState implements ReviewStates {
  const factory _ReviewMoveToPreviousCardState() =
      _$_ReviewMoveToPreviousCardState;
}

/// @nodoc
abstract class _$$_ReviewCompleteStateCopyWith<$Res> {
  factory _$$_ReviewCompleteStateCopyWith(_$_ReviewCompleteState value,
          $Res Function(_$_ReviewCompleteState) then) =
      __$$_ReviewCompleteStateCopyWithImpl<$Res>;
  @useResult
  $Res call({LessonEntity lessonEntity});
}

/// @nodoc
class __$$_ReviewCompleteStateCopyWithImpl<$Res>
    extends _$ReviewStatesCopyWithImpl<$Res, _$_ReviewCompleteState>
    implements _$$_ReviewCompleteStateCopyWith<$Res> {
  __$$_ReviewCompleteStateCopyWithImpl(_$_ReviewCompleteState _value,
      $Res Function(_$_ReviewCompleteState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonEntity = null,
  }) {
    return _then(_$_ReviewCompleteState(
      lessonEntity: null == lessonEntity
          ? _value.lessonEntity
          : lessonEntity // ignore: cast_nullable_to_non_nullable
              as LessonEntity,
    ));
  }
}

/// @nodoc

class _$_ReviewCompleteState implements _ReviewCompleteState {
  const _$_ReviewCompleteState({required this.lessonEntity});

  @override
  final LessonEntity lessonEntity;

  @override
  String toString() {
    return 'ReviewStates.complete(lessonEntity: $lessonEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewCompleteState &&
            (identical(other.lessonEntity, lessonEntity) ||
                other.lessonEntity == lessonEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lessonEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewCompleteStateCopyWith<_$_ReviewCompleteState> get copyWith =>
      __$$_ReviewCompleteStateCopyWithImpl<_$_ReviewCompleteState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String? msg, int? statusCode) error,
    required TResult Function() moveToNextCard,
    required TResult Function() moveToPreviousCard,
    required TResult Function(LessonEntity lessonEntity) complete,
    required TResult Function() restartReview,
    required TResult Function() idle,
  }) {
    return complete(lessonEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String? msg, int? statusCode)? error,
    TResult? Function()? moveToNextCard,
    TResult? Function()? moveToPreviousCard,
    TResult? Function(LessonEntity lessonEntity)? complete,
    TResult? Function()? restartReview,
    TResult? Function()? idle,
  }) {
    return complete?.call(lessonEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? msg, int? statusCode)? error,
    TResult Function()? moveToNextCard,
    TResult Function()? moveToPreviousCard,
    TResult Function(LessonEntity lessonEntity)? complete,
    TResult Function()? restartReview,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(lessonEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReviewLoadingState value) loading,
    required TResult Function(_ReviewErrorState value) error,
    required TResult Function(_ReviewMoveToNextCardState value) moveToNextCard,
    required TResult Function(_ReviewMoveToPreviousCardState value)
        moveToPreviousCard,
    required TResult Function(_ReviewCompleteState value) complete,
    required TResult Function(_ReviewRestartState value) restartReview,
    required TResult Function(_ReviewIdleState value) idle,
  }) {
    return complete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReviewLoadingState value)? loading,
    TResult? Function(_ReviewErrorState value)? error,
    TResult? Function(_ReviewMoveToNextCardState value)? moveToNextCard,
    TResult? Function(_ReviewMoveToPreviousCardState value)? moveToPreviousCard,
    TResult? Function(_ReviewCompleteState value)? complete,
    TResult? Function(_ReviewRestartState value)? restartReview,
    TResult? Function(_ReviewIdleState value)? idle,
  }) {
    return complete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReviewLoadingState value)? loading,
    TResult Function(_ReviewErrorState value)? error,
    TResult Function(_ReviewMoveToNextCardState value)? moveToNextCard,
    TResult Function(_ReviewMoveToPreviousCardState value)? moveToPreviousCard,
    TResult Function(_ReviewCompleteState value)? complete,
    TResult Function(_ReviewRestartState value)? restartReview,
    TResult Function(_ReviewIdleState value)? idle,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(this);
    }
    return orElse();
  }
}

abstract class _ReviewCompleteState implements ReviewStates {
  const factory _ReviewCompleteState(
      {required final LessonEntity lessonEntity}) = _$_ReviewCompleteState;

  LessonEntity get lessonEntity;
  @JsonKey(ignore: true)
  _$$_ReviewCompleteStateCopyWith<_$_ReviewCompleteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReviewRestartStateCopyWith<$Res> {
  factory _$$_ReviewRestartStateCopyWith(_$_ReviewRestartState value,
          $Res Function(_$_ReviewRestartState) then) =
      __$$_ReviewRestartStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ReviewRestartStateCopyWithImpl<$Res>
    extends _$ReviewStatesCopyWithImpl<$Res, _$_ReviewRestartState>
    implements _$$_ReviewRestartStateCopyWith<$Res> {
  __$$_ReviewRestartStateCopyWithImpl(
      _$_ReviewRestartState _value, $Res Function(_$_ReviewRestartState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ReviewRestartState implements _ReviewRestartState {
  const _$_ReviewRestartState();

  @override
  String toString() {
    return 'ReviewStates.restartReview()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ReviewRestartState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String? msg, int? statusCode) error,
    required TResult Function() moveToNextCard,
    required TResult Function() moveToPreviousCard,
    required TResult Function(LessonEntity lessonEntity) complete,
    required TResult Function() restartReview,
    required TResult Function() idle,
  }) {
    return restartReview();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String? msg, int? statusCode)? error,
    TResult? Function()? moveToNextCard,
    TResult? Function()? moveToPreviousCard,
    TResult? Function(LessonEntity lessonEntity)? complete,
    TResult? Function()? restartReview,
    TResult? Function()? idle,
  }) {
    return restartReview?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? msg, int? statusCode)? error,
    TResult Function()? moveToNextCard,
    TResult Function()? moveToPreviousCard,
    TResult Function(LessonEntity lessonEntity)? complete,
    TResult Function()? restartReview,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (restartReview != null) {
      return restartReview();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReviewLoadingState value) loading,
    required TResult Function(_ReviewErrorState value) error,
    required TResult Function(_ReviewMoveToNextCardState value) moveToNextCard,
    required TResult Function(_ReviewMoveToPreviousCardState value)
        moveToPreviousCard,
    required TResult Function(_ReviewCompleteState value) complete,
    required TResult Function(_ReviewRestartState value) restartReview,
    required TResult Function(_ReviewIdleState value) idle,
  }) {
    return restartReview(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReviewLoadingState value)? loading,
    TResult? Function(_ReviewErrorState value)? error,
    TResult? Function(_ReviewMoveToNextCardState value)? moveToNextCard,
    TResult? Function(_ReviewMoveToPreviousCardState value)? moveToPreviousCard,
    TResult? Function(_ReviewCompleteState value)? complete,
    TResult? Function(_ReviewRestartState value)? restartReview,
    TResult? Function(_ReviewIdleState value)? idle,
  }) {
    return restartReview?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReviewLoadingState value)? loading,
    TResult Function(_ReviewErrorState value)? error,
    TResult Function(_ReviewMoveToNextCardState value)? moveToNextCard,
    TResult Function(_ReviewMoveToPreviousCardState value)? moveToPreviousCard,
    TResult Function(_ReviewCompleteState value)? complete,
    TResult Function(_ReviewRestartState value)? restartReview,
    TResult Function(_ReviewIdleState value)? idle,
    required TResult orElse(),
  }) {
    if (restartReview != null) {
      return restartReview(this);
    }
    return orElse();
  }
}

abstract class _ReviewRestartState implements ReviewStates {
  const factory _ReviewRestartState() = _$_ReviewRestartState;
}

/// @nodoc
abstract class _$$_ReviewIdleStateCopyWith<$Res> {
  factory _$$_ReviewIdleStateCopyWith(
          _$_ReviewIdleState value, $Res Function(_$_ReviewIdleState) then) =
      __$$_ReviewIdleStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ReviewIdleStateCopyWithImpl<$Res>
    extends _$ReviewStatesCopyWithImpl<$Res, _$_ReviewIdleState>
    implements _$$_ReviewIdleStateCopyWith<$Res> {
  __$$_ReviewIdleStateCopyWithImpl(
      _$_ReviewIdleState _value, $Res Function(_$_ReviewIdleState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ReviewIdleState implements _ReviewIdleState {
  const _$_ReviewIdleState();

  @override
  String toString() {
    return 'ReviewStates.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ReviewIdleState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String? msg, int? statusCode) error,
    required TResult Function() moveToNextCard,
    required TResult Function() moveToPreviousCard,
    required TResult Function(LessonEntity lessonEntity) complete,
    required TResult Function() restartReview,
    required TResult Function() idle,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String? msg, int? statusCode)? error,
    TResult? Function()? moveToNextCard,
    TResult? Function()? moveToPreviousCard,
    TResult? Function(LessonEntity lessonEntity)? complete,
    TResult? Function()? restartReview,
    TResult? Function()? idle,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? msg, int? statusCode)? error,
    TResult Function()? moveToNextCard,
    TResult Function()? moveToPreviousCard,
    TResult Function(LessonEntity lessonEntity)? complete,
    TResult Function()? restartReview,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReviewLoadingState value) loading,
    required TResult Function(_ReviewErrorState value) error,
    required TResult Function(_ReviewMoveToNextCardState value) moveToNextCard,
    required TResult Function(_ReviewMoveToPreviousCardState value)
        moveToPreviousCard,
    required TResult Function(_ReviewCompleteState value) complete,
    required TResult Function(_ReviewRestartState value) restartReview,
    required TResult Function(_ReviewIdleState value) idle,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReviewLoadingState value)? loading,
    TResult? Function(_ReviewErrorState value)? error,
    TResult? Function(_ReviewMoveToNextCardState value)? moveToNextCard,
    TResult? Function(_ReviewMoveToPreviousCardState value)? moveToPreviousCard,
    TResult? Function(_ReviewCompleteState value)? complete,
    TResult? Function(_ReviewRestartState value)? restartReview,
    TResult? Function(_ReviewIdleState value)? idle,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReviewLoadingState value)? loading,
    TResult Function(_ReviewErrorState value)? error,
    TResult Function(_ReviewMoveToNextCardState value)? moveToNextCard,
    TResult Function(_ReviewMoveToPreviousCardState value)? moveToPreviousCard,
    TResult Function(_ReviewCompleteState value)? complete,
    TResult Function(_ReviewRestartState value)? restartReview,
    TResult Function(_ReviewIdleState value)? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _ReviewIdleState implements ReviewStates {
  const factory _ReviewIdleState() = _$_ReviewIdleState;
}
