import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hamzallc_auth/core/core.dart';

/// Defines the contract for authentication-related operations.
abstract class AuthService {
  /// Authenticates a user by logging in with email and password.
  ///
  /// Parameters:
  ///   - [email] (String): The user's email.
  ///   - [password] (String): The user's password.
  ///
  /// Returns:
  ///   A Future that resolves to an Either
  ///   containing a Failure or a User object.
  Future<Either<Failure, User>> loginUser({
    required String email,
    required String password,
  });

  /// Registers a new user with email and password.
  ///
  /// Parameters:
  ///   - [email] (String): The user's email.
  ///   - [password] (String): The user's password.
  ///   - [name] (String): The user's name.
  ///
  /// Returns:
  ///   A Future that resolves to an Either
  ///   containing a Failure or a User object.
  Future<Either<Failure, User>> registerUser({
    required String email,
    required String password,
    required String name,
  });

  /// Sends a verification email to the user.
  ///
  /// Returns:
  ///   A Future that resolves to an Either containing a Failure or void.
  Future<Either<Failure, void>> verifyEmail();

  /// Signs in a user using Google authentication.
  ///
  /// Returns:
  ///   A Future that resolves to an Either
  ///   containing a Failure or a User object.
  Future<Either<Failure, User>> signWithGoogle();

  /// Checks if the user has verified their email.
  ///
  /// Returns:
  ///   true if the user has verified their email, otherwise false.
  bool hasVerifiedEmail();

  /// Authenticates the user using biometrics.
  ///
  /// Returns:
  ///   A Future that resolves to true if authentication is successful,
  ///   otherwise false.
  Future<bool> authenticateWithBiometrics();

  /// Checks if biometric authentication is available on the device.
  ///
  /// Returns:
  ///   A Future that resolves to true if biometric authentication is available,
  ///   otherwise false.
  Future<bool> canAuthenticateWithBiometrics();

  /// Signs out the current user.
  ///
  /// Returns:
  ///   A Future that resolves when the user is signed out.
  Future<void> signOut();

  /// Reloads user data.
  ///
  /// Returns:
  ///   A Future that resolves when user data is reloaded.
  Future<void> reloadUser();

  /// Retrieves the current user.
  User? get currentUser;

  /// Retrieves a stream of the current user.
  Stream<User?> get userStream;
}
