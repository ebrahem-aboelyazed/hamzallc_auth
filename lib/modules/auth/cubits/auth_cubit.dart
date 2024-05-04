import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hamzallc_auth/core/core.dart';
import 'package:hamzallc_auth/modules/auth/auth.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

/// Manages authentication state and operations.
class AuthCubit extends Cubit<AuthState> {
  AuthCubit({
    required this.authService,
  }) : super(const AuthState.initial());

  final AuthService authService;

  bool biometricAuthenticated = false;

  /// Retrieves the current user.
  User? get currentUser => authService.currentUser;

  /// Retrieves a stream of the current user.
  Stream<User?> get userStream => authService.userStream;

  /// Global key for the login form.
  final GlobalKey<FormState> loginFormKey = GlobalKey();

  /// Global key for the sign-up form.
  final GlobalKey<FormState> signUpFormKey = GlobalKey();

  /// Logs in a user with email and password.
  ///
  /// Parameters:
  ///   - [email] (String): The user's email.
  ///   - [password] (String): The user's password.
  ///
  /// Emits:
  ///   - AuthState.loading(): When login process starts.
  ///   - AuthState.loggedIn(): When login is successful.
  Future<void> loginUser({
    required String email,
    required String password,
  }) async {
    final validated = loginFormKey.currentState?.validate() ?? false;
    if (!validated) return;

    emit(const AuthState.loading());
    final response = await authService.loginUser(
      email: email,
      password: password,
    );
    response.fold(
      onFailure,
      (_) => emit(const AuthState.loggedIn()),
    );
  }

  /// Registers a new user with email, password, and name.
  ///
  /// Parameters:
  ///   - [email] (String): The user's email.
  ///   - [password] (String): The user's password.
  ///   - [name] (String): The user's name.
  ///
  /// Emits:
  ///   - AuthState.loading(): When registration process starts.
  ///   - AuthState.registered(): When registration is successful.
  Future<void> registerUser({
    required String email,
    required String password,
    required String name,
  }) async {
    final validated = signUpFormKey.currentState?.validate() ?? false;
    if (!validated) return;

    emit(const AuthState.loading());
    final response = await authService.registerUser(
      email: email,
      password: password,
      name: name,
    );
    response.fold(
      onFailure,
      (_) => emit(const AuthState.registered()),
    );
  }

  /// Signs in a user using Google authentication.
  ///
  /// Emits:
  ///   - AuthState.socialSignLoading():
  ///   When sign-in process with Google starts.
  ///   - AuthState.loggedIn():
  ///   When sign-in with Google is successful.
  Future<void> signWithGoogle() async {
    emit(const AuthState.socialSignLoading());
    final response = await authService.signWithGoogle();
    response.fold(
      onFailure,
      (r) => emit(const AuthState.loggedIn()),
    );
  }

  /// Sends a verification email to the user.
  Future<void> sendVerificationEmail() async {
    await authService.verifyEmail();
  }

  /// Authenticates the user using biometrics.
  ///
  /// Emits:
  ///   - AuthState.loading(): When biometric authentication process starts.
  ///   - AuthState.loggedIn(): When biometric authentication is successful.
  Future<void> authenticateWithBiometrics() async {
    if (biometricAuthenticated) return;
    emit(const AuthState.loading());
    final canAuthWithBiometrics =
        await authService.canAuthenticateWithBiometrics();
    if (!canAuthWithBiometrics) {
      emit(const AuthState.loggedIn());
      return;
    }
    final response = await authService.authenticateWithBiometrics();
    biometricAuthenticated = response;
    emit(const AuthState.loggedIn());
  }

  /// Signs out the current user.
  ///
  /// Emits:
  ///   - AuthState.loading(): When sign-out process starts.
  ///   - AuthState.loggedOut(): When sign-out is successful.
  Future<void> signOut() async {
    emit(const AuthState.loading());
    await authService.signOut();
    emit(const AuthState.loggedOut());
  }

  /// Reloads user data.
  Future<void> reloadUser() async {
    await authService.reloadUser();
  }

  /// Handles authentication failures.
  ///
  /// Parameters:
  ///   - [failure] (Failure): The failure encountered during authentication.
  void onFailure(Failure failure) {
    emit(AuthFailure(failure));
  }

  @override
  void emit(AuthState state) {
    if (!isClosed) {
      super.emit(state);
    }
  }
}
