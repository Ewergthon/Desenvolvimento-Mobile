// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(
            Object exception, StackTrace stackTrace, bool shouldPopPage)
        error,
    required TResult Function(dynamic Function() onTryAgain, bool shouldPopPage)
        offline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(
            Object exception, StackTrace stackTrace, bool shouldPopPage)?
        error,
    TResult? Function(dynamic Function() onTryAgain, bool shouldPopPage)?
        offline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(
            Object exception, StackTrace stackTrace, bool shouldPopPage)?
        error,
    TResult Function(dynamic Function() onTryAgain, bool shouldPopPage)?
        offline,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialRegisterState value) initial,
    required TResult Function(LoadingRegisterState value) loading,
    required TResult Function(SuccessRegisterState value) success,
    required TResult Function(ErrorRegisterState value) error,
    required TResult Function(OfflineRegisterState value) offline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialRegisterState value)? initial,
    TResult? Function(LoadingRegisterState value)? loading,
    TResult? Function(SuccessRegisterState value)? success,
    TResult? Function(ErrorRegisterState value)? error,
    TResult? Function(OfflineRegisterState value)? offline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialRegisterState value)? initial,
    TResult Function(LoadingRegisterState value)? loading,
    TResult Function(SuccessRegisterState value)? success,
    TResult Function(ErrorRegisterState value)? error,
    TResult Function(OfflineRegisterState value)? offline,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialRegisterStateImplCopyWith<$Res> {
  factory _$$InitialRegisterStateImplCopyWith(_$InitialRegisterStateImpl value,
          $Res Function(_$InitialRegisterStateImpl) then) =
      __$$InitialRegisterStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialRegisterStateImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$InitialRegisterStateImpl>
    implements _$$InitialRegisterStateImplCopyWith<$Res> {
  __$$InitialRegisterStateImplCopyWithImpl(_$InitialRegisterStateImpl _value,
      $Res Function(_$InitialRegisterStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialRegisterStateImpl implements InitialRegisterState {
  const _$InitialRegisterStateImpl();

  @override
  String toString() {
    return 'RegisterState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialRegisterStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(
            Object exception, StackTrace stackTrace, bool shouldPopPage)
        error,
    required TResult Function(dynamic Function() onTryAgain, bool shouldPopPage)
        offline,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(
            Object exception, StackTrace stackTrace, bool shouldPopPage)?
        error,
    TResult? Function(dynamic Function() onTryAgain, bool shouldPopPage)?
        offline,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(
            Object exception, StackTrace stackTrace, bool shouldPopPage)?
        error,
    TResult Function(dynamic Function() onTryAgain, bool shouldPopPage)?
        offline,
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
    required TResult Function(InitialRegisterState value) initial,
    required TResult Function(LoadingRegisterState value) loading,
    required TResult Function(SuccessRegisterState value) success,
    required TResult Function(ErrorRegisterState value) error,
    required TResult Function(OfflineRegisterState value) offline,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialRegisterState value)? initial,
    TResult? Function(LoadingRegisterState value)? loading,
    TResult? Function(SuccessRegisterState value)? success,
    TResult? Function(ErrorRegisterState value)? error,
    TResult? Function(OfflineRegisterState value)? offline,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialRegisterState value)? initial,
    TResult Function(LoadingRegisterState value)? loading,
    TResult Function(SuccessRegisterState value)? success,
    TResult Function(ErrorRegisterState value)? error,
    TResult Function(OfflineRegisterState value)? offline,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialRegisterState implements RegisterState {
  const factory InitialRegisterState() = _$InitialRegisterStateImpl;
}

/// @nodoc
abstract class _$$LoadingRegisterStateImplCopyWith<$Res> {
  factory _$$LoadingRegisterStateImplCopyWith(_$LoadingRegisterStateImpl value,
          $Res Function(_$LoadingRegisterStateImpl) then) =
      __$$LoadingRegisterStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingRegisterStateImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$LoadingRegisterStateImpl>
    implements _$$LoadingRegisterStateImplCopyWith<$Res> {
  __$$LoadingRegisterStateImplCopyWithImpl(_$LoadingRegisterStateImpl _value,
      $Res Function(_$LoadingRegisterStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingRegisterStateImpl implements LoadingRegisterState {
  const _$LoadingRegisterStateImpl();

  @override
  String toString() {
    return 'RegisterState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingRegisterStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(
            Object exception, StackTrace stackTrace, bool shouldPopPage)
        error,
    required TResult Function(dynamic Function() onTryAgain, bool shouldPopPage)
        offline,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(
            Object exception, StackTrace stackTrace, bool shouldPopPage)?
        error,
    TResult? Function(dynamic Function() onTryAgain, bool shouldPopPage)?
        offline,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(
            Object exception, StackTrace stackTrace, bool shouldPopPage)?
        error,
    TResult Function(dynamic Function() onTryAgain, bool shouldPopPage)?
        offline,
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
    required TResult Function(InitialRegisterState value) initial,
    required TResult Function(LoadingRegisterState value) loading,
    required TResult Function(SuccessRegisterState value) success,
    required TResult Function(ErrorRegisterState value) error,
    required TResult Function(OfflineRegisterState value) offline,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialRegisterState value)? initial,
    TResult? Function(LoadingRegisterState value)? loading,
    TResult? Function(SuccessRegisterState value)? success,
    TResult? Function(ErrorRegisterState value)? error,
    TResult? Function(OfflineRegisterState value)? offline,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialRegisterState value)? initial,
    TResult Function(LoadingRegisterState value)? loading,
    TResult Function(SuccessRegisterState value)? success,
    TResult Function(ErrorRegisterState value)? error,
    TResult Function(OfflineRegisterState value)? offline,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingRegisterState implements RegisterState {
  const factory LoadingRegisterState() = _$LoadingRegisterStateImpl;
}

/// @nodoc
abstract class _$$SuccessRegisterStateImplCopyWith<$Res> {
  factory _$$SuccessRegisterStateImplCopyWith(_$SuccessRegisterStateImpl value,
          $Res Function(_$SuccessRegisterStateImpl) then) =
      __$$SuccessRegisterStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessRegisterStateImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$SuccessRegisterStateImpl>
    implements _$$SuccessRegisterStateImplCopyWith<$Res> {
  __$$SuccessRegisterStateImplCopyWithImpl(_$SuccessRegisterStateImpl _value,
      $Res Function(_$SuccessRegisterStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SuccessRegisterStateImpl implements SuccessRegisterState {
  const _$SuccessRegisterStateImpl();

  @override
  String toString() {
    return 'RegisterState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessRegisterStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(
            Object exception, StackTrace stackTrace, bool shouldPopPage)
        error,
    required TResult Function(dynamic Function() onTryAgain, bool shouldPopPage)
        offline,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(
            Object exception, StackTrace stackTrace, bool shouldPopPage)?
        error,
    TResult? Function(dynamic Function() onTryAgain, bool shouldPopPage)?
        offline,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(
            Object exception, StackTrace stackTrace, bool shouldPopPage)?
        error,
    TResult Function(dynamic Function() onTryAgain, bool shouldPopPage)?
        offline,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialRegisterState value) initial,
    required TResult Function(LoadingRegisterState value) loading,
    required TResult Function(SuccessRegisterState value) success,
    required TResult Function(ErrorRegisterState value) error,
    required TResult Function(OfflineRegisterState value) offline,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialRegisterState value)? initial,
    TResult? Function(LoadingRegisterState value)? loading,
    TResult? Function(SuccessRegisterState value)? success,
    TResult? Function(ErrorRegisterState value)? error,
    TResult? Function(OfflineRegisterState value)? offline,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialRegisterState value)? initial,
    TResult Function(LoadingRegisterState value)? loading,
    TResult Function(SuccessRegisterState value)? success,
    TResult Function(ErrorRegisterState value)? error,
    TResult Function(OfflineRegisterState value)? offline,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessRegisterState implements RegisterState {
  const factory SuccessRegisterState() = _$SuccessRegisterStateImpl;
}

/// @nodoc
abstract class _$$ErrorRegisterStateImplCopyWith<$Res> {
  factory _$$ErrorRegisterStateImplCopyWith(_$ErrorRegisterStateImpl value,
          $Res Function(_$ErrorRegisterStateImpl) then) =
      __$$ErrorRegisterStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object exception, StackTrace stackTrace, bool shouldPopPage});
}

/// @nodoc
class __$$ErrorRegisterStateImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$ErrorRegisterStateImpl>
    implements _$$ErrorRegisterStateImplCopyWith<$Res> {
  __$$ErrorRegisterStateImplCopyWithImpl(_$ErrorRegisterStateImpl _value,
      $Res Function(_$ErrorRegisterStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
    Object? stackTrace = null,
    Object? shouldPopPage = null,
  }) {
    return _then(_$ErrorRegisterStateImpl(
      exception: null == exception ? _value.exception : exception,
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      shouldPopPage: null == shouldPopPage
          ? _value.shouldPopPage
          : shouldPopPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ErrorRegisterStateImpl implements ErrorRegisterState {
  const _$ErrorRegisterStateImpl(
      {required this.exception,
      required this.stackTrace,
      required this.shouldPopPage});

  @override
  final Object exception;
  @override
  final StackTrace stackTrace;
  @override
  final bool shouldPopPage;

  @override
  String toString() {
    return 'RegisterState.error(exception: $exception, stackTrace: $stackTrace, shouldPopPage: $shouldPopPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorRegisterStateImpl &&
            const DeepCollectionEquality().equals(other.exception, exception) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.shouldPopPage, shouldPopPage) ||
                other.shouldPopPage == shouldPopPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(exception),
      stackTrace,
      shouldPopPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorRegisterStateImplCopyWith<_$ErrorRegisterStateImpl> get copyWith =>
      __$$ErrorRegisterStateImplCopyWithImpl<_$ErrorRegisterStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(
            Object exception, StackTrace stackTrace, bool shouldPopPage)
        error,
    required TResult Function(dynamic Function() onTryAgain, bool shouldPopPage)
        offline,
  }) {
    return error(exception, stackTrace, shouldPopPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(
            Object exception, StackTrace stackTrace, bool shouldPopPage)?
        error,
    TResult? Function(dynamic Function() onTryAgain, bool shouldPopPage)?
        offline,
  }) {
    return error?.call(exception, stackTrace, shouldPopPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(
            Object exception, StackTrace stackTrace, bool shouldPopPage)?
        error,
    TResult Function(dynamic Function() onTryAgain, bool shouldPopPage)?
        offline,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(exception, stackTrace, shouldPopPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialRegisterState value) initial,
    required TResult Function(LoadingRegisterState value) loading,
    required TResult Function(SuccessRegisterState value) success,
    required TResult Function(ErrorRegisterState value) error,
    required TResult Function(OfflineRegisterState value) offline,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialRegisterState value)? initial,
    TResult? Function(LoadingRegisterState value)? loading,
    TResult? Function(SuccessRegisterState value)? success,
    TResult? Function(ErrorRegisterState value)? error,
    TResult? Function(OfflineRegisterState value)? offline,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialRegisterState value)? initial,
    TResult Function(LoadingRegisterState value)? loading,
    TResult Function(SuccessRegisterState value)? success,
    TResult Function(ErrorRegisterState value)? error,
    TResult Function(OfflineRegisterState value)? offline,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorRegisterState implements RegisterState {
  const factory ErrorRegisterState(
      {required final Object exception,
      required final StackTrace stackTrace,
      required final bool shouldPopPage}) = _$ErrorRegisterStateImpl;

  Object get exception;
  StackTrace get stackTrace;
  bool get shouldPopPage;
  @JsonKey(ignore: true)
  _$$ErrorRegisterStateImplCopyWith<_$ErrorRegisterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OfflineRegisterStateImplCopyWith<$Res> {
  factory _$$OfflineRegisterStateImplCopyWith(_$OfflineRegisterStateImpl value,
          $Res Function(_$OfflineRegisterStateImpl) then) =
      __$$OfflineRegisterStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic Function() onTryAgain, bool shouldPopPage});
}

/// @nodoc
class __$$OfflineRegisterStateImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$OfflineRegisterStateImpl>
    implements _$$OfflineRegisterStateImplCopyWith<$Res> {
  __$$OfflineRegisterStateImplCopyWithImpl(_$OfflineRegisterStateImpl _value,
      $Res Function(_$OfflineRegisterStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onTryAgain = null,
    Object? shouldPopPage = null,
  }) {
    return _then(_$OfflineRegisterStateImpl(
      onTryAgain: null == onTryAgain
          ? _value.onTryAgain
          : onTryAgain // ignore: cast_nullable_to_non_nullable
              as dynamic Function(),
      shouldPopPage: null == shouldPopPage
          ? _value.shouldPopPage
          : shouldPopPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OfflineRegisterStateImpl implements OfflineRegisterState {
  const _$OfflineRegisterStateImpl(
      {required this.onTryAgain, required this.shouldPopPage});

  @override
  final dynamic Function() onTryAgain;
  @override
  final bool shouldPopPage;

  @override
  String toString() {
    return 'RegisterState.offline(onTryAgain: $onTryAgain, shouldPopPage: $shouldPopPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfflineRegisterStateImpl &&
            (identical(other.onTryAgain, onTryAgain) ||
                other.onTryAgain == onTryAgain) &&
            (identical(other.shouldPopPage, shouldPopPage) ||
                other.shouldPopPage == shouldPopPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onTryAgain, shouldPopPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OfflineRegisterStateImplCopyWith<_$OfflineRegisterStateImpl>
      get copyWith =>
          __$$OfflineRegisterStateImplCopyWithImpl<_$OfflineRegisterStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(
            Object exception, StackTrace stackTrace, bool shouldPopPage)
        error,
    required TResult Function(dynamic Function() onTryAgain, bool shouldPopPage)
        offline,
  }) {
    return offline(onTryAgain, shouldPopPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(
            Object exception, StackTrace stackTrace, bool shouldPopPage)?
        error,
    TResult? Function(dynamic Function() onTryAgain, bool shouldPopPage)?
        offline,
  }) {
    return offline?.call(onTryAgain, shouldPopPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(
            Object exception, StackTrace stackTrace, bool shouldPopPage)?
        error,
    TResult Function(dynamic Function() onTryAgain, bool shouldPopPage)?
        offline,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline(onTryAgain, shouldPopPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialRegisterState value) initial,
    required TResult Function(LoadingRegisterState value) loading,
    required TResult Function(SuccessRegisterState value) success,
    required TResult Function(ErrorRegisterState value) error,
    required TResult Function(OfflineRegisterState value) offline,
  }) {
    return offline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialRegisterState value)? initial,
    TResult? Function(LoadingRegisterState value)? loading,
    TResult? Function(SuccessRegisterState value)? success,
    TResult? Function(ErrorRegisterState value)? error,
    TResult? Function(OfflineRegisterState value)? offline,
  }) {
    return offline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialRegisterState value)? initial,
    TResult Function(LoadingRegisterState value)? loading,
    TResult Function(SuccessRegisterState value)? success,
    TResult Function(ErrorRegisterState value)? error,
    TResult Function(OfflineRegisterState value)? offline,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline(this);
    }
    return orElse();
  }
}

abstract class OfflineRegisterState implements RegisterState {
  const factory OfflineRegisterState(
      {required final dynamic Function() onTryAgain,
      required final bool shouldPopPage}) = _$OfflineRegisterStateImpl;

  dynamic Function() get onTryAgain;
  bool get shouldPopPage;
  @JsonKey(ignore: true)
  _$$OfflineRegisterStateImplCopyWith<_$OfflineRegisterStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
