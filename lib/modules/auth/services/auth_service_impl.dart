import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hamzallc_auth/core/exceptions/failure.dart';
import 'package:hamzallc_auth/modules/auth/auth.dart';
import 'package:injectable/injectable.dart';
import 'package:local_auth/local_auth.dart';

@LazySingleton(as: AuthService)
class AuthServiceImpl implements AuthService {
  AuthServiceImpl(this._firebaseAuth, this._localAuth, this._googleSignIn);

  final FirebaseAuth _firebaseAuth;
  final LocalAuthentication _localAuth;
  final GoogleSignIn _googleSignIn;

  @override
  Future<Either<Failure, User>> loginUser({
    required String email,
    required String password,
  }) async {
    try {
      final result = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      final user = result.user;
      final emailVerified = user?.emailVerified ?? false;
      if (!emailVerified) {
        await user?.sendEmailVerification();
      }
      return user != null ? Right(user) : const Left(Failure());
    } catch (e) {
      final message = e.toString();
      return Left(Failure(message: message));
    }
  }

  @override
  Future<Either<Failure, User>> registerUser({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      final credentials = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      final user = credentials.user;
      if (user == null) return const Left(Failure());
      await user.updateDisplayName(name);
      return await loginUser(email: email, password: password);
    } catch (e) {
      final message = e.toString();
      return Left(Failure(message: message));
    }
  }

  @override
  Future<Either<Failure, void>> verifyEmail() async {
    try {
      final user = _firebaseAuth.currentUser;
      if (user != null) {
        await user.sendEmailVerification();
        return const Right(null);
      } else {
        return const Left(Failure());
      }
    } catch (e) {
      final message = e.toString();
      return Left(Failure(message: message));
    }
  }

  @override
  Future<Either<Failure, User>> signWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      final googleAuth = await googleUser?.authentication;
      if (googleAuth == null) return const Left(Failure());
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      final data = await _firebaseAuth.signInWithCredential(credential);
      final user = data.user;
      if (user == null) return const Left(Failure());
      return Right(user);
    } catch (e) {
      final message = e.toString();
      return Left(Failure(message: message));
    }
  }

  @override
  bool hasVerifiedEmail() {
    final user = _firebaseAuth.currentUser;
    return user?.emailVerified ?? false;
  }

  @override
  Future<bool> authenticateWithBiometrics() async {
    try {
      final canAuthenticate = await canAuthenticateWithBiometrics();
      if (!canAuthenticate) return false;
      final didAuthenticate = await _localAuth.authenticate(
        localizedReason: 'Please authenticate to access your account',
        options: const AuthenticationOptions(
          stickyAuth: true,
          biometricOnly: true,
        ),
      );
      return didAuthenticate;
    } on PlatformException {
      return false;
    }
  }

  @override
  Future<bool> canAuthenticateWithBiometrics() async {
    final canAuthenticateWithBiometrics = await _localAuth.canCheckBiometrics;
    final isDeviceSupported = await _localAuth.isDeviceSupported();
    final canAuthenticate = canAuthenticateWithBiometrics || isDeviceSupported;
    return canAuthenticate;
  }

  @override
  Future<void> signOut() async {
    await _googleSignIn.signOut();
    await _firebaseAuth.signOut();
  }

  @override
  Future<void> reloadUser() async {
    try {
      await _firebaseAuth.currentUser?.reload();
    } catch (_) {}
  }

  @override
  User? get currentUser => _firebaseAuth.currentUser;

  @override
  Stream<User?> get userStream => _firebaseAuth.userChanges();
}
