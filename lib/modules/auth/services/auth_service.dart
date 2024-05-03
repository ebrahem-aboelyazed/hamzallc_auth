import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hamzallc_auth/core/core.dart';

abstract class AuthService {
  Future<Either<Failure, User>> loginUser({
    required String email,
    required String password,
  });

  Future<Either<Failure, User>> registerUser({
    required String email,
    required String password,
    required String name,
  });

  Future<Either<Failure, void>> verifyEmail();

  Future<Either<Failure, User>> signWithGoogle();

  bool hasVerifiedEmail();

  Future<bool> authenticateWithBiometrics();

  Future<bool> canAuthenticateWithBiometrics();

  Future<void> signOut();

  Future<void> reloadUser();

  User? get currentUser;

  Stream<User?> get userStream;
}
