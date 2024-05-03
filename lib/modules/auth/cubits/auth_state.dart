part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = AuthInitial;

  const factory AuthState.unauthorized() = AuthUnauthorized;

  const factory AuthState.loading() = AuthLoading;

  const factory AuthState.socialSignLoading() = AuthSocialSignLoading;

  const factory AuthState.registered() = AuthRegistered;

  const factory AuthState.loggedIn() = AuthLoggedIn;

  const factory AuthState.loggedOut() = AuthLoggedOut;

  const factory AuthState.updated() = AuthUpdated;

  const factory AuthState.failure(Failure failure) = AuthFailure;
}
