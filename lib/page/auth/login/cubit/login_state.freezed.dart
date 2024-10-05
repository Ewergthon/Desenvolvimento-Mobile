// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginState {
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
    required TResult Function(InitialLoginState value) initial,
    required TResult Function(LoadingLoginState value) loading,
    required TResult Function(SuccessLoginState value) success,
    required TResult Function(ErrorLoginState value) error,
    required TResult Function(OfflineLoginState value) offline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialLoginState value)? initial,
    TResult? Function(LoadingLoginState value)? loading,
    TResult? Function(SuccessLoginState value)? success,
    TResult? Function(ErrorLoginState value)? error,
    TResult? Function(OfflineLoginState value)? offline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLoginState value)? initial,
    TResult Function(LoadingLoginState value)? loading,
    TResult Function(SuccessLoginState value)? success,
    TResult Function(ErrorLoginState value)? error,
    TResult Function(OfflineLoginState value)? offline,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialLoginStateImplCopyWith<$Res> {
  factory _$$InitialLoginStateImplCopyWith(_$InitialLoginStateImpl value,
          $Res Function(_$InitialLoginStateImpl) then) =
      __$$InitialLoginStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialLoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$InitialLoginStateImpl>
    implements _$$InitialLoginStateImplCopyWith<$Res> {
  __$$InitialLoginStateImplCopyWithImpl(_$InitialLoginStateImpl _value,
      $Res Function(_$InitialLoginStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialLoginStateImpl implements InitialLoginState {
  const _$InitialLoginStateImpl();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialLoginStateImpl);
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
    required TResult Function(InitialLoginState value) initial,
    required TResult Function(LoadingLoginState value) loading,
    required TResult Function(SuccessLoginState value) success,
    required TResult Function(ErrorLoginState value) error,
    required TResult Function(OfflineLoginState value) offline,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialLoginState value)? initial,
    TResult? Function(LoadingLoginState value)? loading,
    TResult? Function(SuccessLoginState value)? success,
    TResult? Function(ErrorLoginState value)? error,
    TResult? Function(OfflineLoginState value)? offline,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLoginState value)? initial,
    TResult Function(LoadingLoginState value)? loading,
    TResult Function(SuccessLoginState value)? success,
    TResult Function(ErrorLoginState value)? error,
    TResult Function(OfflineLoginState value)? offline,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialLoginState implements LoginState {
  const factory InitialLoginState() = _$InitialLoginStateImpl;
}

/// @nodoc
abstract class _$$LoadingLoginStateImplCopyWith<$Res> {
  factory _$$LoadingLoginStateImplCopyWith(_$LoadingLoginStateImpl value,
          $Res Function(_$LoadingLoginStateImpl) then) =
      __$$LoadingLoginStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingLoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoadingLoginStateImpl>
    implements _$$LoadingLoginStateImplCopyWith<$Res> {
  __$$LoadingLoginStateImplCopyWithImpl(_$LoadingLoginStateImpl _value,
      $Res Function(_$LoadingLoginStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingLoginStateImpl implements LoadingLoginState {
  const _$LoadingLoginStateImpl();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingLoginStateImpl);
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
    required TResult Function(InitialLoginState value) initial,
    required TResult Function(LoadingLoginState value) loading,
    required TResult Function(SuccessLoginState value) success,
    required TResult Function(ErrorLoginState value) error,
    required TResult Function(OfflineLoginState value) offline,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialLoginState value)? initial,
    TResult? Function(LoadingLoginState value)? loading,
    TResult? Function(SuccessLoginState value)? success,
    TResult? Function(ErrorLoginState value)? error,
    TResult? Function(OfflineLoginState value)? offline,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLoginState value)? initial,
    TResult Function(LoadingLoginState value)? loading,
    TResult Function(SuccessLoginState value)? success,
    TResult Function(ErrorLoginState value)? error,
    TResult Function(OfflineLoginState value)? offline,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingLoginState implements LoginState {
  const factory LoadingLoginState() = _$LoadingLoginStateImpl;
}

/// @nodoc
abstract class _$$SuccessLoginStateImplCopyWith<$Res> {
  factory _$$SuccessLoginStateImplCopyWith(_$SuccessLoginStateImpl value,
          $Res Function(_$SuccessLoginStateImpl) then) =
      __$$SuccessLoginStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessLoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$SuccessLoginStateImpl>
    implements _$$SuccessLoginStateImplCopyWith<$Res> {
  __$$SuccessLoginStateImplCopyWithImpl(_$SuccessLoginStateImpl _value,
      $Res Function(_$SuccessLoginStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SuccessLoginStateImpl implements SuccessLoginState {
  const _$SuccessLoginStateImpl();

  @override
  String toString() {
    return 'LoginState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessLoginStateImpl);
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
    required TResult Function(InitialLoginState value) initial,
    required TResult Function(LoadingLoginState value) loading,
    required TResult Function(SuccessLoginState value) success,
    required TResult Function(ErrorLoginState value) error,
    required TResult Function(OfflineLoginState value) offline,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialLoginState value)? initial,
    TResult? Function(LoadingLoginState value)? loading,
    TResult? Function(SuccessLoginState value)? success,
    TResult? Function(ErrorLoginState value)? error,
    TResult? Function(OfflineLoginState value)? offline,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLoginState value)? initial,
    TResult Function(LoadingLoginState value)? loading,
    TResult Function(SuccessLoginState value)? success,
    TResult Function(ErrorLoginState value)? error,
    TResult Function(OfflineLoginState value)? offline,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessLoginState implements LoginState {
  const factory SuccessLoginState() = _$SuccessLoginStateImpl;
}

/// @nodoc
abstract class _$$ErrorLoginStateImplCopyWith<$Res> {
  factory _$$ErrorLoginStateImplCopyWith(_$ErrorLoginStateImpl value,
          $Res Function(_$ErrorLoginStateImpl) then) =
      __$$ErrorLoginStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object exception, StackTrace stackTrace, bool shouldPopPage});
}

/// @nodoc
class __$$ErrorLoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$ErrorLoginStateImpl>
    implements _$$ErrorLoginStateImplCopyWith<$Res> {
  __$$ErrorLoginStateImplCopyWithImpl(
      _$ErrorLoginStateImpl _value, $Res Function(_$ErrorLoginStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
    Object? stackTrace = null,
    Object? shouldPopPage = null,
  }) {
    return _then(_$ErrorLoginStateImpl(
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

class _$ErrorLoginStateImpl implements ErrorLoginState {
  const _$ErrorLoginStateImpl(
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
    return 'LoginState.error(exception: $exception, stackTrace: $stackTrace, shouldPopPage: $shouldPopPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorLoginStateImpl &&
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
  _$$ErrorLoginStateImplCopyWith<_$ErrorLoginStateImpl> get copyWith =>
      __$$ErrorLoginStateImplCopyWithImpl<_$ErrorLoginStateImpl>(
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
    required TResult Function(InitialLoginState value) initial,
    required TResult Function(LoadingLoginState value) loading,
    required TResult Function(SuccessLoginState value) success,
    required TResult Function(ErrorLoginState value) error,
    required TResult Function(OfflineLoginState value) offline,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialLoginState value)? initial,
    TResult? Function(LoadingLoginState value)? loading,
    TResult? Function(SuccessLoginState value)? success,
    TResult? Function(ErrorLoginState value)? error,
    TResult? Function(OfflineLoginState value)? offline,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLoginState value)? initial,
    TResult Function(LoadingLoginState value)? loading,
    TResult Function(SuccessLoginState value)? success,
    TResult Function(ErrorLoginState value)? error,
    TResult Function(OfflineLoginState value)? offline,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorLoginState implements LoginState {
  const factory ErrorLoginState(
      {required final Object exception,
      required final StackTrace stackTrace,
      required final bool shouldPopPage}) = _$ErrorLoginStateImpl;

  Object get exception;
  StackTrace get stackTrace;
  bool get shouldPopPage;
  @JsonKey(ignore: true)
  _$$ErrorLoginStateImplCopyWith<_$ErrorLoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OfflineLoginStateImplCopyWith<$Res> {
  factory _$$OfflineLoginStateImplCopyWith(_$OfflineLoginStateImpl value,
          $Res Function(_$OfflineLoginStateImpl) then) =
      __$$OfflineLoginStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic Function() onTryAgain, bool shouldPopPage});
}

/// @nodoc
class __$$OfflineLoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$OfflineLoginStateImpl>
    implements _$$OfflineLoginStateImplCopyWith<$Res> {
  __$$OfflineLoginStateImplCopyWithImpl(_$OfflineLoginStateImpl _value,
      $Res Function(_$OfflineLoginStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onTryAgain = null,
    Object? shouldPopPage = null,
  }) {
    return _then(_$OfflineLoginStateImpl(
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

class _$OfflineLoginStateImpl implements OfflineLoginState {
  const _$OfflineLoginStateImpl(
      {required this.onTryAgain, required this.shouldPopPage});

  @override
  final dynamic Function() onTryAgain;
  @override
  final bool shouldPopPage;

  @override
  String toString() {
    return 'LoginState.offline(onTryAgain: $onTryAgain, shouldPopPage: $shouldPopPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfflineLoginStateImpl &&
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
  _$$OfflineLoginStateImplCopyWith<_$OfflineLoginStateImpl> get copyWith =>
      __$$OfflineLoginStateImplCopyWithImpl<_$OfflineLoginStateImpl>(
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
    required TResult Function(InitialLoginState value) initial,
    required TResult Function(LoadingLoginState value) loading,
    required TResult Function(SuccessLoginState value) success,
    required TResult Function(ErrorLoginState value) error,
    required TResult Function(OfflineLoginState value) offline,
  }) {
    return offline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialLoginState value)? initial,
    TResult? Function(LoadingLoginState value)? loading,
    TResult? Function(SuccessLoginState value)? success,
    TResult? Function(ErrorLoginState value)? error,
    TResult? Function(OfflineLoginState value)? offline,
  }) {
    return offline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLoginState value)? initial,
    TResult Function(LoadingLoginState value)? loading,
    TResult Function(SuccessLoginState value)? success,
    TResult Function(ErrorLoginState value)? error,
    TResult Function(OfflineLoginState value)? offline,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline(this);
    }
    return orElse();
  }
}

abstract class OfflineLoginState implements LoginState {
  const factory OfflineLoginState(
      {required final dynamic Function() onTryAgain,
      required final bool shouldPopPage}) = _$OfflineLoginStateImpl;

  dynamic Function() get onTryAgain;
  bool get shouldPopPage;
  @JsonKey(ignore: true)
  _$$OfflineLoginStateImplCopyWith<_$OfflineLoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
