// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'request_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RequestStateTearOff {
  const _$RequestStateTearOff();

  RequestStateInitial<Value, Error> initial<Value, Error extends Exception>() {
    return RequestStateInitial<Value, Error>();
  }

  RequestStateLoading<Value, Error> loading<Value, Error extends Exception>(
      {Value? resultMaybe}) {
    return RequestStateLoading<Value, Error>(
      resultMaybe: resultMaybe,
    );
  }

  RequestStateSuccess<Value, Error> success<Value, Error extends Exception>(
      Value result) {
    return RequestStateSuccess<Value, Error>(
      result,
    );
  }

  RequestStateFailure<Value, Error> failure<Value, Error extends Exception>(
      Error error) {
    return RequestStateFailure<Value, Error>(
      error,
    );
  }
}

/// @nodoc
const $RequestState = _$RequestStateTearOff();

/// @nodoc
mixin _$RequestState<Value, Error extends Exception> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Value? resultMaybe) loading,
    required TResult Function(Value result) success,
    required TResult Function(Error error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Value? resultMaybe)? loading,
    TResult Function(Value result)? success,
    TResult Function(Error error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Value? resultMaybe)? loading,
    TResult Function(Value result)? success,
    TResult Function(Error error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestStateInitial<Value, Error> value) initial,
    required TResult Function(RequestStateLoading<Value, Error> value) loading,
    required TResult Function(RequestStateSuccess<Value, Error> value) success,
    required TResult Function(RequestStateFailure<Value, Error> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RequestStateInitial<Value, Error> value)? initial,
    TResult Function(RequestStateLoading<Value, Error> value)? loading,
    TResult Function(RequestStateSuccess<Value, Error> value)? success,
    TResult Function(RequestStateFailure<Value, Error> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestStateInitial<Value, Error> value)? initial,
    TResult Function(RequestStateLoading<Value, Error> value)? loading,
    TResult Function(RequestStateSuccess<Value, Error> value)? success,
    TResult Function(RequestStateFailure<Value, Error> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestStateCopyWith<Value, Error extends Exception, $Res> {
  factory $RequestStateCopyWith(RequestState<Value, Error> value,
      $Res Function(RequestState<Value, Error>) then) =
  _$RequestStateCopyWithImpl<Value, Error, $Res>;
}

/// @nodoc
class _$RequestStateCopyWithImpl<Value, Error extends Exception, $Res>
    implements $RequestStateCopyWith<Value, Error, $Res> {
  _$RequestStateCopyWithImpl(this._value, this._then);

  final RequestState<Value, Error> _value;
  // ignore: unused_field
  final $Res Function(RequestState<Value, Error>) _then;
}

/// @nodoc
abstract class $RequestStateInitialCopyWith<Value, Error extends Exception,
$Res> {
  factory $RequestStateInitialCopyWith(RequestStateInitial<Value, Error> value,
      $Res Function(RequestStateInitial<Value, Error>) then) =
  _$RequestStateInitialCopyWithImpl<Value, Error, $Res>;
}

/// @nodoc
class _$RequestStateInitialCopyWithImpl<Value, Error extends Exception, $Res>
    extends _$RequestStateCopyWithImpl<Value, Error, $Res>
    implements $RequestStateInitialCopyWith<Value, Error, $Res> {
  _$RequestStateInitialCopyWithImpl(RequestStateInitial<Value, Error> _value,
      $Res Function(RequestStateInitial<Value, Error>) _then)
      : super(_value, (v) => _then(v as RequestStateInitial<Value, Error>));

  @override
  RequestStateInitial<Value, Error> get _value =>
      super._value as RequestStateInitial<Value, Error>;
}

/// @nodoc

class _$RequestStateInitial<Value, Error extends Exception>
    implements RequestStateInitial<Value, Error> {
  const _$RequestStateInitial();

  @override
  String toString() {
    return 'RequestState<$Value, $Error>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RequestStateInitial<Value, Error>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Value? resultMaybe) loading,
    required TResult Function(Value result) success,
    required TResult Function(Error error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Value? resultMaybe)? loading,
    TResult Function(Value result)? success,
    TResult Function(Error error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Value? resultMaybe)? loading,
    TResult Function(Value result)? success,
    TResult Function(Error error)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestStateInitial<Value, Error> value) initial,
    required TResult Function(RequestStateLoading<Value, Error> value) loading,
    required TResult Function(RequestStateSuccess<Value, Error> value) success,
    required TResult Function(RequestStateFailure<Value, Error> value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RequestStateInitial<Value, Error> value)? initial,
    TResult Function(RequestStateLoading<Value, Error> value)? loading,
    TResult Function(RequestStateSuccess<Value, Error> value)? success,
    TResult Function(RequestStateFailure<Value, Error> value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestStateInitial<Value, Error> value)? initial,
    TResult Function(RequestStateLoading<Value, Error> value)? loading,
    TResult Function(RequestStateSuccess<Value, Error> value)? success,
    TResult Function(RequestStateFailure<Value, Error> value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RequestStateInitial<Value, Error extends Exception>
    implements RequestState<Value, Error> {
  const factory RequestStateInitial() = _$RequestStateInitial<Value, Error>;
}

/// @nodoc
abstract class $RequestStateLoadingCopyWith<Value, Error extends Exception,
$Res> {
  factory $RequestStateLoadingCopyWith(RequestStateLoading<Value, Error> value,
      $Res Function(RequestStateLoading<Value, Error>) then) =
  _$RequestStateLoadingCopyWithImpl<Value, Error, $Res>;
  $Res call({Value? resultMaybe});
}

/// @nodoc
class _$RequestStateLoadingCopyWithImpl<Value, Error extends Exception, $Res>
    extends _$RequestStateCopyWithImpl<Value, Error, $Res>
    implements $RequestStateLoadingCopyWith<Value, Error, $Res> {
  _$RequestStateLoadingCopyWithImpl(RequestStateLoading<Value, Error> _value,
      $Res Function(RequestStateLoading<Value, Error>) _then)
      : super(_value, (v) => _then(v as RequestStateLoading<Value, Error>));

  @override
  RequestStateLoading<Value, Error> get _value =>
      super._value as RequestStateLoading<Value, Error>;

  @override
  $Res call({
    Object? resultMaybe = freezed,
  }) {
    return _then(RequestStateLoading<Value, Error>(
      resultMaybe: resultMaybe == freezed
          ? _value.resultMaybe
          : resultMaybe // ignore: cast_nullable_to_non_nullable
      as Value?,
    ));
  }
}

/// @nodoc

class _$RequestStateLoading<Value, Error extends Exception>
    implements RequestStateLoading<Value, Error> {
  const _$RequestStateLoading({this.resultMaybe});

  @override
  final Value? resultMaybe;

  @override
  String toString() {
    return 'RequestState<$Value, $Error>.loading(resultMaybe: $resultMaybe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RequestStateLoading<Value, Error> &&
            const DeepCollectionEquality()
                .equals(other.resultMaybe, resultMaybe));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(resultMaybe));

  @JsonKey(ignore: true)
  @override
  $RequestStateLoadingCopyWith<Value, Error, RequestStateLoading<Value, Error>>
  get copyWith => _$RequestStateLoadingCopyWithImpl<Value, Error,
      RequestStateLoading<Value, Error>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Value? resultMaybe) loading,
    required TResult Function(Value result) success,
    required TResult Function(Error error) failure,
  }) {
    return loading(resultMaybe);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Value? resultMaybe)? loading,
    TResult Function(Value result)? success,
    TResult Function(Error error)? failure,
  }) {
    return loading?.call(resultMaybe);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Value? resultMaybe)? loading,
    TResult Function(Value result)? success,
    TResult Function(Error error)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(resultMaybe);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestStateInitial<Value, Error> value) initial,
    required TResult Function(RequestStateLoading<Value, Error> value) loading,
    required TResult Function(RequestStateSuccess<Value, Error> value) success,
    required TResult Function(RequestStateFailure<Value, Error> value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RequestStateInitial<Value, Error> value)? initial,
    TResult Function(RequestStateLoading<Value, Error> value)? loading,
    TResult Function(RequestStateSuccess<Value, Error> value)? success,
    TResult Function(RequestStateFailure<Value, Error> value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestStateInitial<Value, Error> value)? initial,
    TResult Function(RequestStateLoading<Value, Error> value)? loading,
    TResult Function(RequestStateSuccess<Value, Error> value)? success,
    TResult Function(RequestStateFailure<Value, Error> value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RequestStateLoading<Value, Error extends Exception>
    implements RequestState<Value, Error> {
  const factory RequestStateLoading({Value? resultMaybe}) =
  _$RequestStateLoading<Value, Error>;

  Value? get resultMaybe;
  @JsonKey(ignore: true)
  $RequestStateLoadingCopyWith<Value, Error, RequestStateLoading<Value, Error>>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestStateSuccessCopyWith<Value, Error extends Exception,
$Res> {
  factory $RequestStateSuccessCopyWith(RequestStateSuccess<Value, Error> value,
      $Res Function(RequestStateSuccess<Value, Error>) then) =
  _$RequestStateSuccessCopyWithImpl<Value, Error, $Res>;
  $Res call({Value result});
}

/// @nodoc
class _$RequestStateSuccessCopyWithImpl<Value, Error extends Exception, $Res>
    extends _$RequestStateCopyWithImpl<Value, Error, $Res>
    implements $RequestStateSuccessCopyWith<Value, Error, $Res> {
  _$RequestStateSuccessCopyWithImpl(RequestStateSuccess<Value, Error> _value,
      $Res Function(RequestStateSuccess<Value, Error>) _then)
      : super(_value, (v) => _then(v as RequestStateSuccess<Value, Error>));

  @override
  RequestStateSuccess<Value, Error> get _value =>
      super._value as RequestStateSuccess<Value, Error>;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(RequestStateSuccess<Value, Error>(
      result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
      as Value,
    ));
  }
}

/// @nodoc

class _$RequestStateSuccess<Value, Error extends Exception>
    implements RequestStateSuccess<Value, Error> {
  const _$RequestStateSuccess(this.result);

  @override
  final Value result;

  @override
  String toString() {
    return 'RequestState<$Value, $Error>.success(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RequestStateSuccess<Value, Error> &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  $RequestStateSuccessCopyWith<Value, Error, RequestStateSuccess<Value, Error>>
  get copyWith => _$RequestStateSuccessCopyWithImpl<Value, Error,
      RequestStateSuccess<Value, Error>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Value? resultMaybe) loading,
    required TResult Function(Value result) success,
    required TResult Function(Error error) failure,
  }) {
    return success(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Value? resultMaybe)? loading,
    TResult Function(Value result)? success,
    TResult Function(Error error)? failure,
  }) {
    return success?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Value? resultMaybe)? loading,
    TResult Function(Value result)? success,
    TResult Function(Error error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestStateInitial<Value, Error> value) initial,
    required TResult Function(RequestStateLoading<Value, Error> value) loading,
    required TResult Function(RequestStateSuccess<Value, Error> value) success,
    required TResult Function(RequestStateFailure<Value, Error> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RequestStateInitial<Value, Error> value)? initial,
    TResult Function(RequestStateLoading<Value, Error> value)? loading,
    TResult Function(RequestStateSuccess<Value, Error> value)? success,
    TResult Function(RequestStateFailure<Value, Error> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestStateInitial<Value, Error> value)? initial,
    TResult Function(RequestStateLoading<Value, Error> value)? loading,
    TResult Function(RequestStateSuccess<Value, Error> value)? success,
    TResult Function(RequestStateFailure<Value, Error> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class RequestStateSuccess<Value, Error extends Exception>
    implements RequestState<Value, Error> {
  const factory RequestStateSuccess(Value result) =
  _$RequestStateSuccess<Value, Error>;

  Value get result;
  @JsonKey(ignore: true)
  $RequestStateSuccessCopyWith<Value, Error, RequestStateSuccess<Value, Error>>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestStateFailureCopyWith<Value, Error extends Exception,
$Res> {
  factory $RequestStateFailureCopyWith(RequestStateFailure<Value, Error> value,
      $Res Function(RequestStateFailure<Value, Error>) then) =
  _$RequestStateFailureCopyWithImpl<Value, Error, $Res>;
  $Res call({Error error});
}

/// @nodoc
class _$RequestStateFailureCopyWithImpl<Value, Error extends Exception, $Res>
    extends _$RequestStateCopyWithImpl<Value, Error, $Res>
    implements $RequestStateFailureCopyWith<Value, Error, $Res> {
  _$RequestStateFailureCopyWithImpl(RequestStateFailure<Value, Error> _value,
      $Res Function(RequestStateFailure<Value, Error>) _then)
      : super(_value, (v) => _then(v as RequestStateFailure<Value, Error>));

  @override
  RequestStateFailure<Value, Error> get _value =>
      super._value as RequestStateFailure<Value, Error>;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(RequestStateFailure<Value, Error>(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
      as Error,
    ));
  }
}

/// @nodoc

class _$RequestStateFailure<Value, Error extends Exception>
    implements RequestStateFailure<Value, Error> {
  const _$RequestStateFailure(this.error);

  @override
  final Error error;

  @override
  String toString() {
    return 'RequestState<$Value, $Error>.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RequestStateFailure<Value, Error> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $RequestStateFailureCopyWith<Value, Error, RequestStateFailure<Value, Error>>
  get copyWith => _$RequestStateFailureCopyWithImpl<Value, Error,
      RequestStateFailure<Value, Error>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Value? resultMaybe) loading,
    required TResult Function(Value result) success,
    required TResult Function(Error error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Value? resultMaybe)? loading,
    TResult Function(Value result)? success,
    TResult Function(Error error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Value? resultMaybe)? loading,
    TResult Function(Value result)? success,
    TResult Function(Error error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestStateInitial<Value, Error> value) initial,
    required TResult Function(RequestStateLoading<Value, Error> value) loading,
    required TResult Function(RequestStateSuccess<Value, Error> value) success,
    required TResult Function(RequestStateFailure<Value, Error> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RequestStateInitial<Value, Error> value)? initial,
    TResult Function(RequestStateLoading<Value, Error> value)? loading,
    TResult Function(RequestStateSuccess<Value, Error> value)? success,
    TResult Function(RequestStateFailure<Value, Error> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestStateInitial<Value, Error> value)? initial,
    TResult Function(RequestStateLoading<Value, Error> value)? loading,
    TResult Function(RequestStateSuccess<Value, Error> value)? success,
    TResult Function(RequestStateFailure<Value, Error> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class RequestStateFailure<Value, Error extends Exception>
    implements RequestState<Value, Error> {
  const factory RequestStateFailure(Error error) =
  _$RequestStateFailure<Value, Error>;

  Error get error;
  @JsonKey(ignore: true)
  $RequestStateFailureCopyWith<Value, Error, RequestStateFailure<Value, Error>>
  get copyWith => throw _privateConstructorUsedError;
}
