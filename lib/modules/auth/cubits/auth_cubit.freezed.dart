// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthorized,
    required TResult Function() loading,
    required TResult Function() registered,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() updated,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthorized,
    TResult? Function()? loading,
    TResult? Function()? registered,
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
    TResult? Function()? updated,
    TResult? Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthorized,
    TResult Function()? loading,
    TResult Function()? registered,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? updated,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthUnauthorized value) unauthorized,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthRegistered value) registered,
    required TResult Function(AuthLoggedIn value) loggedIn,
    required TResult Function(AuthLoggedOut value) loggedOut,
    required TResult Function(AuthUpdated value) updated,
    required TResult Function(AuthFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(AuthUnauthorized value)? unauthorized,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(AuthRegistered value)? registered,
    TResult? Function(AuthLoggedIn value)? loggedIn,
    TResult? Function(AuthLoggedOut value)? loggedOut,
    TResult? Function(AuthUpdated value)? updated,
    TResult? Function(AuthFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthUnauthorized value)? unauthorized,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthRegistered value)? registered,
    TResult Function(AuthLoggedIn value)? loggedIn,
    TResult Function(AuthLoggedOut value)? loggedOut,
    TResult Function(AuthUpdated value)? updated,
    TResult Function(AuthFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthInitialImplCopyWith<$Res> {
  factory _$$AuthInitialImplCopyWith(
          _$AuthInitialImpl value, $Res Function(_$AuthInitialImpl) then) =
      __$$AuthInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthInitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthInitialImpl>
    implements _$$AuthInitialImplCopyWith<$Res> {
  __$$AuthInitialImplCopyWithImpl(
      _$AuthInitialImpl _value, $Res Function(_$AuthInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthInitialImpl implements AuthInitial {
  const _$AuthInitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthorized,
    required TResult Function() loading,
    required TResult Function() registered,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() updated,
    required TResult Function(Failure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthorized,
    TResult? Function()? loading,
    TResult? Function()? registered,
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
    TResult? Function()? updated,
    TResult? Function(Failure failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthorized,
    TResult Function()? loading,
    TResult Function()? registered,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? updated,
    TResult Function(Failure failure)? failure,
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
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthUnauthorized value) unauthorized,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthRegistered value) registered,
    required TResult Function(AuthLoggedIn value) loggedIn,
    required TResult Function(AuthLoggedOut value) loggedOut,
    required TResult Function(AuthUpdated value) updated,
    required TResult Function(AuthFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(AuthUnauthorized value)? unauthorized,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(AuthRegistered value)? registered,
    TResult? Function(AuthLoggedIn value)? loggedIn,
    TResult? Function(AuthLoggedOut value)? loggedOut,
    TResult? Function(AuthUpdated value)? updated,
    TResult? Function(AuthFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthUnauthorized value)? unauthorized,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthRegistered value)? registered,
    TResult Function(AuthLoggedIn value)? loggedIn,
    TResult Function(AuthLoggedOut value)? loggedOut,
    TResult Function(AuthUpdated value)? updated,
    TResult Function(AuthFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AuthInitial implements AuthState {
  const factory AuthInitial() = _$AuthInitialImpl;
}

/// @nodoc
abstract class _$$AuthUnauthorizedImplCopyWith<$Res> {
  factory _$$AuthUnauthorizedImplCopyWith(_$AuthUnauthorizedImpl value,
          $Res Function(_$AuthUnauthorizedImpl) then) =
      __$$AuthUnauthorizedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthUnauthorizedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthUnauthorizedImpl>
    implements _$$AuthUnauthorizedImplCopyWith<$Res> {
  __$$AuthUnauthorizedImplCopyWithImpl(_$AuthUnauthorizedImpl _value,
      $Res Function(_$AuthUnauthorizedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthUnauthorizedImpl implements AuthUnauthorized {
  const _$AuthUnauthorizedImpl();

  @override
  String toString() {
    return 'AuthState.unauthorized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthUnauthorizedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthorized,
    required TResult Function() loading,
    required TResult Function() registered,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() updated,
    required TResult Function(Failure failure) failure,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthorized,
    TResult? Function()? loading,
    TResult? Function()? registered,
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
    TResult? Function()? updated,
    TResult? Function(Failure failure)? failure,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthorized,
    TResult Function()? loading,
    TResult Function()? registered,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? updated,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthUnauthorized value) unauthorized,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthRegistered value) registered,
    required TResult Function(AuthLoggedIn value) loggedIn,
    required TResult Function(AuthLoggedOut value) loggedOut,
    required TResult Function(AuthUpdated value) updated,
    required TResult Function(AuthFailure value) failure,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(AuthUnauthorized value)? unauthorized,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(AuthRegistered value)? registered,
    TResult? Function(AuthLoggedIn value)? loggedIn,
    TResult? Function(AuthLoggedOut value)? loggedOut,
    TResult? Function(AuthUpdated value)? updated,
    TResult? Function(AuthFailure value)? failure,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthUnauthorized value)? unauthorized,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthRegistered value)? registered,
    TResult Function(AuthLoggedIn value)? loggedIn,
    TResult Function(AuthLoggedOut value)? loggedOut,
    TResult Function(AuthUpdated value)? updated,
    TResult Function(AuthFailure value)? failure,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class AuthUnauthorized implements AuthState {
  const factory AuthUnauthorized() = _$AuthUnauthorizedImpl;
}

/// @nodoc
abstract class _$$AuthLoadingImplCopyWith<$Res> {
  factory _$$AuthLoadingImplCopyWith(
          _$AuthLoadingImpl value, $Res Function(_$AuthLoadingImpl) then) =
      __$$AuthLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthLoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthLoadingImpl>
    implements _$$AuthLoadingImplCopyWith<$Res> {
  __$$AuthLoadingImplCopyWithImpl(
      _$AuthLoadingImpl _value, $Res Function(_$AuthLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthLoadingImpl implements AuthLoading {
  const _$AuthLoadingImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthorized,
    required TResult Function() loading,
    required TResult Function() registered,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() updated,
    required TResult Function(Failure failure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthorized,
    TResult? Function()? loading,
    TResult? Function()? registered,
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
    TResult? Function()? updated,
    TResult? Function(Failure failure)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthorized,
    TResult Function()? loading,
    TResult Function()? registered,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? updated,
    TResult Function(Failure failure)? failure,
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
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthUnauthorized value) unauthorized,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthRegistered value) registered,
    required TResult Function(AuthLoggedIn value) loggedIn,
    required TResult Function(AuthLoggedOut value) loggedOut,
    required TResult Function(AuthUpdated value) updated,
    required TResult Function(AuthFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(AuthUnauthorized value)? unauthorized,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(AuthRegistered value)? registered,
    TResult? Function(AuthLoggedIn value)? loggedIn,
    TResult? Function(AuthLoggedOut value)? loggedOut,
    TResult? Function(AuthUpdated value)? updated,
    TResult? Function(AuthFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthUnauthorized value)? unauthorized,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthRegistered value)? registered,
    TResult Function(AuthLoggedIn value)? loggedIn,
    TResult Function(AuthLoggedOut value)? loggedOut,
    TResult Function(AuthUpdated value)? updated,
    TResult Function(AuthFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthLoading implements AuthState {
  const factory AuthLoading() = _$AuthLoadingImpl;
}

/// @nodoc
abstract class _$$AuthRegisteredImplCopyWith<$Res> {
  factory _$$AuthRegisteredImplCopyWith(_$AuthRegisteredImpl value,
          $Res Function(_$AuthRegisteredImpl) then) =
      __$$AuthRegisteredImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthRegisteredImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthRegisteredImpl>
    implements _$$AuthRegisteredImplCopyWith<$Res> {
  __$$AuthRegisteredImplCopyWithImpl(
      _$AuthRegisteredImpl _value, $Res Function(_$AuthRegisteredImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthRegisteredImpl implements AuthRegistered {
  const _$AuthRegisteredImpl();

  @override
  String toString() {
    return 'AuthState.registered()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthRegisteredImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthorized,
    required TResult Function() loading,
    required TResult Function() registered,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() updated,
    required TResult Function(Failure failure) failure,
  }) {
    return registered();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthorized,
    TResult? Function()? loading,
    TResult? Function()? registered,
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
    TResult? Function()? updated,
    TResult? Function(Failure failure)? failure,
  }) {
    return registered?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthorized,
    TResult Function()? loading,
    TResult Function()? registered,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? updated,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (registered != null) {
      return registered();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthUnauthorized value) unauthorized,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthRegistered value) registered,
    required TResult Function(AuthLoggedIn value) loggedIn,
    required TResult Function(AuthLoggedOut value) loggedOut,
    required TResult Function(AuthUpdated value) updated,
    required TResult Function(AuthFailure value) failure,
  }) {
    return registered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(AuthUnauthorized value)? unauthorized,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(AuthRegistered value)? registered,
    TResult? Function(AuthLoggedIn value)? loggedIn,
    TResult? Function(AuthLoggedOut value)? loggedOut,
    TResult? Function(AuthUpdated value)? updated,
    TResult? Function(AuthFailure value)? failure,
  }) {
    return registered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthUnauthorized value)? unauthorized,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthRegistered value)? registered,
    TResult Function(AuthLoggedIn value)? loggedIn,
    TResult Function(AuthLoggedOut value)? loggedOut,
    TResult Function(AuthUpdated value)? updated,
    TResult Function(AuthFailure value)? failure,
    required TResult orElse(),
  }) {
    if (registered != null) {
      return registered(this);
    }
    return orElse();
  }
}

abstract class AuthRegistered implements AuthState {
  const factory AuthRegistered() = _$AuthRegisteredImpl;
}

/// @nodoc
abstract class _$$AuthLoggedInImplCopyWith<$Res> {
  factory _$$AuthLoggedInImplCopyWith(
          _$AuthLoggedInImpl value, $Res Function(_$AuthLoggedInImpl) then) =
      __$$AuthLoggedInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthLoggedInImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthLoggedInImpl>
    implements _$$AuthLoggedInImplCopyWith<$Res> {
  __$$AuthLoggedInImplCopyWithImpl(
      _$AuthLoggedInImpl _value, $Res Function(_$AuthLoggedInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthLoggedInImpl implements AuthLoggedIn {
  const _$AuthLoggedInImpl();

  @override
  String toString() {
    return 'AuthState.loggedIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthLoggedInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthorized,
    required TResult Function() loading,
    required TResult Function() registered,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() updated,
    required TResult Function(Failure failure) failure,
  }) {
    return loggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthorized,
    TResult? Function()? loading,
    TResult? Function()? registered,
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
    TResult? Function()? updated,
    TResult? Function(Failure failure)? failure,
  }) {
    return loggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthorized,
    TResult Function()? loading,
    TResult Function()? registered,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? updated,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthUnauthorized value) unauthorized,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthRegistered value) registered,
    required TResult Function(AuthLoggedIn value) loggedIn,
    required TResult Function(AuthLoggedOut value) loggedOut,
    required TResult Function(AuthUpdated value) updated,
    required TResult Function(AuthFailure value) failure,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(AuthUnauthorized value)? unauthorized,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(AuthRegistered value)? registered,
    TResult? Function(AuthLoggedIn value)? loggedIn,
    TResult? Function(AuthLoggedOut value)? loggedOut,
    TResult? Function(AuthUpdated value)? updated,
    TResult? Function(AuthFailure value)? failure,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthUnauthorized value)? unauthorized,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthRegistered value)? registered,
    TResult Function(AuthLoggedIn value)? loggedIn,
    TResult Function(AuthLoggedOut value)? loggedOut,
    TResult Function(AuthUpdated value)? updated,
    TResult Function(AuthFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class AuthLoggedIn implements AuthState {
  const factory AuthLoggedIn() = _$AuthLoggedInImpl;
}

/// @nodoc
abstract class _$$AuthLoggedOutImplCopyWith<$Res> {
  factory _$$AuthLoggedOutImplCopyWith(
          _$AuthLoggedOutImpl value, $Res Function(_$AuthLoggedOutImpl) then) =
      __$$AuthLoggedOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthLoggedOutImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthLoggedOutImpl>
    implements _$$AuthLoggedOutImplCopyWith<$Res> {
  __$$AuthLoggedOutImplCopyWithImpl(
      _$AuthLoggedOutImpl _value, $Res Function(_$AuthLoggedOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthLoggedOutImpl implements AuthLoggedOut {
  const _$AuthLoggedOutImpl();

  @override
  String toString() {
    return 'AuthState.loggedOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthLoggedOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthorized,
    required TResult Function() loading,
    required TResult Function() registered,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() updated,
    required TResult Function(Failure failure) failure,
  }) {
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthorized,
    TResult? Function()? loading,
    TResult? Function()? registered,
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
    TResult? Function()? updated,
    TResult? Function(Failure failure)? failure,
  }) {
    return loggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthorized,
    TResult Function()? loading,
    TResult Function()? registered,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? updated,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthUnauthorized value) unauthorized,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthRegistered value) registered,
    required TResult Function(AuthLoggedIn value) loggedIn,
    required TResult Function(AuthLoggedOut value) loggedOut,
    required TResult Function(AuthUpdated value) updated,
    required TResult Function(AuthFailure value) failure,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(AuthUnauthorized value)? unauthorized,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(AuthRegistered value)? registered,
    TResult? Function(AuthLoggedIn value)? loggedIn,
    TResult? Function(AuthLoggedOut value)? loggedOut,
    TResult? Function(AuthUpdated value)? updated,
    TResult? Function(AuthFailure value)? failure,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthUnauthorized value)? unauthorized,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthRegistered value)? registered,
    TResult Function(AuthLoggedIn value)? loggedIn,
    TResult Function(AuthLoggedOut value)? loggedOut,
    TResult Function(AuthUpdated value)? updated,
    TResult Function(AuthFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class AuthLoggedOut implements AuthState {
  const factory AuthLoggedOut() = _$AuthLoggedOutImpl;
}

/// @nodoc
abstract class _$$AuthUpdatedImplCopyWith<$Res> {
  factory _$$AuthUpdatedImplCopyWith(
          _$AuthUpdatedImpl value, $Res Function(_$AuthUpdatedImpl) then) =
      __$$AuthUpdatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthUpdatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthUpdatedImpl>
    implements _$$AuthUpdatedImplCopyWith<$Res> {
  __$$AuthUpdatedImplCopyWithImpl(
      _$AuthUpdatedImpl _value, $Res Function(_$AuthUpdatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthUpdatedImpl implements AuthUpdated {
  const _$AuthUpdatedImpl();

  @override
  String toString() {
    return 'AuthState.updated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthUpdatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthorized,
    required TResult Function() loading,
    required TResult Function() registered,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() updated,
    required TResult Function(Failure failure) failure,
  }) {
    return updated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthorized,
    TResult? Function()? loading,
    TResult? Function()? registered,
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
    TResult? Function()? updated,
    TResult? Function(Failure failure)? failure,
  }) {
    return updated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthorized,
    TResult Function()? loading,
    TResult Function()? registered,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? updated,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthUnauthorized value) unauthorized,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthRegistered value) registered,
    required TResult Function(AuthLoggedIn value) loggedIn,
    required TResult Function(AuthLoggedOut value) loggedOut,
    required TResult Function(AuthUpdated value) updated,
    required TResult Function(AuthFailure value) failure,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(AuthUnauthorized value)? unauthorized,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(AuthRegistered value)? registered,
    TResult? Function(AuthLoggedIn value)? loggedIn,
    TResult? Function(AuthLoggedOut value)? loggedOut,
    TResult? Function(AuthUpdated value)? updated,
    TResult? Function(AuthFailure value)? failure,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthUnauthorized value)? unauthorized,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthRegistered value)? registered,
    TResult Function(AuthLoggedIn value)? loggedIn,
    TResult Function(AuthLoggedOut value)? loggedOut,
    TResult Function(AuthUpdated value)? updated,
    TResult Function(AuthFailure value)? failure,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class AuthUpdated implements AuthState {
  const factory AuthUpdated() = _$AuthUpdatedImpl;
}

/// @nodoc
abstract class _$$AuthFailureImplCopyWith<$Res> {
  factory _$$AuthFailureImplCopyWith(
          _$AuthFailureImpl value, $Res Function(_$AuthFailureImpl) then) =
      __$$AuthFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$AuthFailureImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthFailureImpl>
    implements _$$AuthFailureImplCopyWith<$Res> {
  __$$AuthFailureImplCopyWithImpl(
      _$AuthFailureImpl _value, $Res Function(_$AuthFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$AuthFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$AuthFailureImpl implements AuthFailure {
  const _$AuthFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'AuthState.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthFailureImplCopyWith<_$AuthFailureImpl> get copyWith =>
      __$$AuthFailureImplCopyWithImpl<_$AuthFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthorized,
    required TResult Function() loading,
    required TResult Function() registered,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() updated,
    required TResult Function(Failure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthorized,
    TResult? Function()? loading,
    TResult? Function()? registered,
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
    TResult? Function()? updated,
    TResult? Function(Failure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthorized,
    TResult Function()? loading,
    TResult Function()? registered,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? updated,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthUnauthorized value) unauthorized,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthRegistered value) registered,
    required TResult Function(AuthLoggedIn value) loggedIn,
    required TResult Function(AuthLoggedOut value) loggedOut,
    required TResult Function(AuthUpdated value) updated,
    required TResult Function(AuthFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(AuthUnauthorized value)? unauthorized,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(AuthRegistered value)? registered,
    TResult? Function(AuthLoggedIn value)? loggedIn,
    TResult? Function(AuthLoggedOut value)? loggedOut,
    TResult? Function(AuthUpdated value)? updated,
    TResult? Function(AuthFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthUnauthorized value)? unauthorized,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthRegistered value)? registered,
    TResult Function(AuthLoggedIn value)? loggedIn,
    TResult Function(AuthLoggedOut value)? loggedOut,
    TResult Function(AuthUpdated value)? updated,
    TResult Function(AuthFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class AuthFailure implements AuthState {
  const factory AuthFailure(final Failure failure) = _$AuthFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$AuthFailureImplCopyWith<_$AuthFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
