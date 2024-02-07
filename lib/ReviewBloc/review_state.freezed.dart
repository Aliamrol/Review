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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$ReviewLoadingStateImplCopyWith<$Res> {
  factory _$$ReviewLoadingStateImplCopyWith(_$ReviewLoadingStateImpl value,
          $Res Function(_$ReviewLoadingStateImpl) then) =
      __$$ReviewLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReviewLoadingStateImplCopyWithImpl<$Res>
    extends _$ReviewStatesCopyWithImpl<$Res, _$ReviewLoadingStateImpl>
    implements _$$ReviewLoadingStateImplCopyWith<$Res> {
  __$$ReviewLoadingStateImplCopyWithImpl(_$ReviewLoadingStateImpl _value,
      $Res Function(_$ReviewLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReviewLoadingStateImpl implements _ReviewLoadingState {
  const _$ReviewLoadingStateImpl();

  @override
  String toString() {
    return 'ReviewStates.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReviewLoadingStateImpl);
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
  const factory _ReviewLoadingState() = _$ReviewLoadingStateImpl;
}

/// @nodoc
abstract class _$$ReviewErrorStateImplCopyWith<$Res> {
  factory _$$ReviewErrorStateImplCopyWith(_$ReviewErrorStateImpl value,
          $Res Function(_$ReviewErrorStateImpl) then) =
      __$$ReviewErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? msg, int? statusCode});
}

/// @nodoc
class __$$ReviewErrorStateImplCopyWithImpl<$Res>
    extends _$ReviewStatesCopyWithImpl<$Res, _$ReviewErrorStateImpl>
    implements _$$ReviewErrorStateImplCopyWith<$Res> {
  __$$ReviewErrorStateImplCopyWithImpl(_$ReviewErrorStateImpl _value,
      $Res Function(_$ReviewErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_$ReviewErrorStateImpl(
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

class _$ReviewErrorStateImpl implements _ReviewErrorState {
  const _$ReviewErrorStateImpl(this.msg, this.statusCode);

  @override
  final String? msg;
  @override
  final int? statusCode;

  @override
  String toString() {
    return 'ReviewStates.error(msg: $msg, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewErrorStateImpl &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewErrorStateImplCopyWith<_$ReviewErrorStateImpl> get copyWith =>
      __$$ReviewErrorStateImplCopyWithImpl<_$ReviewErrorStateImpl>(
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
      _$ReviewErrorStateImpl;

  String? get msg;
  int? get statusCode;
  @JsonKey(ignore: true)
  _$$ReviewErrorStateImplCopyWith<_$ReviewErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReviewMoveToNextCardStateImplCopyWith<$Res> {
  factory _$$ReviewMoveToNextCardStateImplCopyWith(
          _$ReviewMoveToNextCardStateImpl value,
          $Res Function(_$ReviewMoveToNextCardStateImpl) then) =
      __$$ReviewMoveToNextCardStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReviewMoveToNextCardStateImplCopyWithImpl<$Res>
    extends _$ReviewStatesCopyWithImpl<$Res, _$ReviewMoveToNextCardStateImpl>
    implements _$$ReviewMoveToNextCardStateImplCopyWith<$Res> {
  __$$ReviewMoveToNextCardStateImplCopyWithImpl(
      _$ReviewMoveToNextCardStateImpl _value,
      $Res Function(_$ReviewMoveToNextCardStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReviewMoveToNextCardStateImpl implements _ReviewMoveToNextCardState {
  const _$ReviewMoveToNextCardStateImpl();

  @override
  String toString() {
    return 'ReviewStates.moveToNextCard()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewMoveToNextCardStateImpl);
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
  const factory _ReviewMoveToNextCardState() = _$ReviewMoveToNextCardStateImpl;
}

/// @nodoc
abstract class _$$ReviewMoveToPreviousCardStateImplCopyWith<$Res> {
  factory _$$ReviewMoveToPreviousCardStateImplCopyWith(
          _$ReviewMoveToPreviousCardStateImpl value,
          $Res Function(_$ReviewMoveToPreviousCardStateImpl) then) =
      __$$ReviewMoveToPreviousCardStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReviewMoveToPreviousCardStateImplCopyWithImpl<$Res>
    extends _$ReviewStatesCopyWithImpl<$Res,
        _$ReviewMoveToPreviousCardStateImpl>
    implements _$$ReviewMoveToPreviousCardStateImplCopyWith<$Res> {
  __$$ReviewMoveToPreviousCardStateImplCopyWithImpl(
      _$ReviewMoveToPreviousCardStateImpl _value,
      $Res Function(_$ReviewMoveToPreviousCardStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReviewMoveToPreviousCardStateImpl
    implements _ReviewMoveToPreviousCardState {
  const _$ReviewMoveToPreviousCardStateImpl();

  @override
  String toString() {
    return 'ReviewStates.moveToPreviousCard()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewMoveToPreviousCardStateImpl);
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
      _$ReviewMoveToPreviousCardStateImpl;
}

/// @nodoc
abstract class _$$ReviewCompleteStateImplCopyWith<$Res> {
  factory _$$ReviewCompleteStateImplCopyWith(_$ReviewCompleteStateImpl value,
          $Res Function(_$ReviewCompleteStateImpl) then) =
      __$$ReviewCompleteStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LessonEntity lessonEntity});
}

/// @nodoc
class __$$ReviewCompleteStateImplCopyWithImpl<$Res>
    extends _$ReviewStatesCopyWithImpl<$Res, _$ReviewCompleteStateImpl>
    implements _$$ReviewCompleteStateImplCopyWith<$Res> {
  __$$ReviewCompleteStateImplCopyWithImpl(_$ReviewCompleteStateImpl _value,
      $Res Function(_$ReviewCompleteStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonEntity = null,
  }) {
    return _then(_$ReviewCompleteStateImpl(
      lessonEntity: null == lessonEntity
          ? _value.lessonEntity
          : lessonEntity // ignore: cast_nullable_to_non_nullable
              as LessonEntity,
    ));
  }
}

/// @nodoc

class _$ReviewCompleteStateImpl implements _ReviewCompleteState {
  const _$ReviewCompleteStateImpl({required this.lessonEntity});

  @override
  final LessonEntity lessonEntity;

  @override
  String toString() {
    return 'ReviewStates.complete(lessonEntity: $lessonEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewCompleteStateImpl &&
            (identical(other.lessonEntity, lessonEntity) ||
                other.lessonEntity == lessonEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lessonEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewCompleteStateImplCopyWith<_$ReviewCompleteStateImpl> get copyWith =>
      __$$ReviewCompleteStateImplCopyWithImpl<_$ReviewCompleteStateImpl>(
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
      {required final LessonEntity lessonEntity}) = _$ReviewCompleteStateImpl;

  LessonEntity get lessonEntity;
  @JsonKey(ignore: true)
  _$$ReviewCompleteStateImplCopyWith<_$ReviewCompleteStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReviewRestartStateImplCopyWith<$Res> {
  factory _$$ReviewRestartStateImplCopyWith(_$ReviewRestartStateImpl value,
          $Res Function(_$ReviewRestartStateImpl) then) =
      __$$ReviewRestartStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReviewRestartStateImplCopyWithImpl<$Res>
    extends _$ReviewStatesCopyWithImpl<$Res, _$ReviewRestartStateImpl>
    implements _$$ReviewRestartStateImplCopyWith<$Res> {
  __$$ReviewRestartStateImplCopyWithImpl(_$ReviewRestartStateImpl _value,
      $Res Function(_$ReviewRestartStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReviewRestartStateImpl implements _ReviewRestartState {
  const _$ReviewRestartStateImpl();

  @override
  String toString() {
    return 'ReviewStates.restartReview()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReviewRestartStateImpl);
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
  const factory _ReviewRestartState() = _$ReviewRestartStateImpl;
}

/// @nodoc
abstract class _$$ReviewIdleStateImplCopyWith<$Res> {
  factory _$$ReviewIdleStateImplCopyWith(_$ReviewIdleStateImpl value,
          $Res Function(_$ReviewIdleStateImpl) then) =
      __$$ReviewIdleStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReviewIdleStateImplCopyWithImpl<$Res>
    extends _$ReviewStatesCopyWithImpl<$Res, _$ReviewIdleStateImpl>
    implements _$$ReviewIdleStateImplCopyWith<$Res> {
  __$$ReviewIdleStateImplCopyWithImpl(
      _$ReviewIdleStateImpl _value, $Res Function(_$ReviewIdleStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReviewIdleStateImpl implements _ReviewIdleState {
  const _$ReviewIdleStateImpl();

  @override
  String toString() {
    return 'ReviewStates.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReviewIdleStateImpl);
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
  const factory _ReviewIdleState() = _$ReviewIdleStateImpl;
}
