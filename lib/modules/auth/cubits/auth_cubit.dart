import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hamzallc_auth/core/core.dart';
import 'package:hamzallc_auth/modules/auth/auth.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit({
    required this.authService,
  }) : super(const AuthState.initial());

  final AuthService authService;

  bool biometricAuthenticated = false;

  User? get currentUser => authService.currentUser;

  Stream<User?> get userStream => authService.userStream;

  final GlobalKey<FormState> loginFormKey = GlobalKey();
  final GlobalKey<FormState> signUpFormKey = GlobalKey();

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

  Future<void> registerUser({
    required String email,
    required String password,
    required String name,
  }) async {
    final validated = signUpFormKey.currentState?.validate() ?? false;
    if (!validated) return;

    emit(const AuthState.loading());

    /// First request to register user
    final response = await authService.registerUser(
      email: email,
      password: password,
      name: name,
    );
    response.fold(
      onFailure,
      (_) async {
        /// Second request to login user and retrieve credentials
        final data = await authService.loginUser(
          email: email,
          password: password,
        );
        data.fold(onFailure, (_) => emit(const AuthState.registered()));
      },
    );
  }

  Future<void> sendVerificationEmail() async {
    await authService.verifyEmail();
  }

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

  Future<void> signOut() async {
    biometricAuthenticated = false;
    emit(const AuthState.loading());
    await authService.signOut();
    emit(const AuthState.loggedOut());
  }

  Future<void> reloadUser() async {
    await authService.reloadUser();
  }

  void onFailure(Failure failure) {
    emit(AuthFailure(failure));
  }
}
