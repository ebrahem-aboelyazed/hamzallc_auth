import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hamzallc_auth/core/exceptions/failure.dart';
import 'package:hamzallc_auth/modules/auth/auth.dart';
import 'package:local_auth/local_auth.dart';
import 'package:mocktail/mocktail.dart';

class MockFirebaseAuth extends Mock implements FirebaseAuth {}

class MockGoogleSignIn extends Mock implements GoogleSignIn {}

class MockUser extends Mock implements User {}

class MockUserCredential extends Mock implements UserCredential {}

class MockAuthCredentials extends Mock implements AuthCredential {}

class MockAuthenticationOptions extends Mock implements AuthenticationOptions {}

class MockGoogleSignInAccount extends Mock implements GoogleSignInAccount {}

class MockGoogleSignInAuthentication extends Mock
    implements GoogleSignInAuthentication {}

class MockLocalAuthentication extends Mock implements LocalAuthentication {}

void main() {
  late AuthServiceImpl authService;
  late FirebaseAuth firebaseAuth;
  late GoogleSignIn googleSignIn;
  late LocalAuthentication localAuthentication;

  setUpAll(() {
    registerFallbackValue(MockAuthCredentials());
    registerFallbackValue(MockAuthenticationOptions());
  });

  setUp(() {
    firebaseAuth = MockFirebaseAuth();
    googleSignIn = MockGoogleSignIn();
    localAuthentication = MockLocalAuthentication();
    authService = AuthServiceImpl(
      firebaseAuth,
      localAuthentication,
      googleSignIn,
    );
  });

  group('loginUser', () {
    test('returns user on successful login', () async {
      final userCredential = MockUserCredential();
      final user = MockUser();
      when(() {
        return firebaseAuth.signInWithEmailAndPassword(
          email: any(named: 'email'),
          password: any(named: 'password'),
        );
      }).thenAnswer((_) async => userCredential);
      when(() => userCredential.user).thenReturn(user);
      when(() => user.emailVerified).thenReturn(true);

      final result = await authService.loginUser(
        email: 'test@example.com',
        password: 'password',
      );
      expect(result, isA<Right<Failure, User>>());
    });

    test('returns failure on failed login', () async {
      when(() {
        return firebaseAuth.signInWithEmailAndPassword(
          email: any(named: 'email'),
          password: any(named: 'password'),
        );
      }).thenThrow(Exception('Failed to login'));

      final result = await authService.loginUser(
        email: 'test@example.com',
        password: 'password',
      );

      expect(result, isA<Left<Failure, User>>());
    });
  });

  group('registerUser', () {
    test('returns user on successful registration', () async {
      final userCredential = MockUserCredential();
      final user = MockUser();
      when(() {
        return firebaseAuth.createUserWithEmailAndPassword(
          email: any(named: 'email'),
          password: any(named: 'password'),
        );
      }).thenAnswer((_) async => userCredential);

      when(() {
        return firebaseAuth.signInWithEmailAndPassword(
          email: any(named: 'email'),
          password: any(named: 'password'),
        );
      }).thenAnswer((_) async => userCredential);

      when(() => userCredential.user).thenReturn(user);
      when(() => user.emailVerified).thenReturn(true);
      when(() => user.updateDisplayName('Test User'))
          .thenAnswer((_) async => {});

      final result = await authService.registerUser(
        email: 'test@example.com',
        password: 'password',
        name: 'Test User',
      );

      expect(result, isA<Right<Failure, User>>());
    });

    test('returns failure on failed registration', () async {
      when(() {
        return firebaseAuth.createUserWithEmailAndPassword(
          email: any(named: 'email'),
          password: any(named: 'password'),
        );
      }).thenThrow(Exception('Failed to register'));

      final result = await authService.registerUser(
        email: 'test@example.com',
        password: 'password',
        name: 'Test User',
      );

      expect(result, isA<Left<Failure, User>>());
    });
  });

  group('verifyEmail', () {
    test('returns success on successful verification', () async {
      final user = MockUser();
      when(() => firebaseAuth.currentUser).thenReturn(user);
      when(user.sendEmailVerification).thenAnswer((_) async {});

      final result = await authService.verifyEmail();

      expect(result, isA<Right<Failure, void>>());
    });

    test('returns failure when user is null', () async {
      final user = MockUser();
      when(() => firebaseAuth.currentUser).thenReturn(user);

      final result = await authService.verifyEmail();

      expect(result, isA<Left<Failure, void>>());
    });
  });

  group('signWithGoogle', () {
    test('returns user on successful sign in with Google', () async {
      final googleUser = MockGoogleSignInAccount();
      final googleAuth = MockGoogleSignInAuthentication();
      final userCredential = MockUserCredential();
      final user = MockUser();

      when(() => googleSignIn.signIn()).thenAnswer((_) async => googleUser);
      when(() => googleUser.authentication).thenAnswer((_) async => googleAuth);
      when(() => googleAuth.accessToken).thenReturn('access_token');
      when(() => googleAuth.idToken).thenReturn('id_token');
      when(() => firebaseAuth.signInWithCredential(any()))
          .thenAnswer((_) async => userCredential);
      when(() => userCredential.user).thenReturn(user);

      final result = await authService.signWithGoogle();

      expect(result, isA<Right<Failure, User>>());
    });

    test('returns failure when Google sign in fails', () async {
      when(
        () => googleSignIn.signIn(),
      ).thenThrow(Exception('Failed to sign in with Google'));

      final result = await authService.signWithGoogle();

      expect(result, isA<Left<Failure, User>>());
    });
  });

  group('hasVerifiedEmail', () {
    test('returns true if email is verified', () async {
      final user = MockUser();
      when(() => user.emailVerified).thenReturn(true);
      when(() => firebaseAuth.currentUser).thenReturn(user);

      final result = authService.hasVerifiedEmail();

      expect(result, true);
    });

    test('returns false if email is not verified', () async {
      final user = MockUser();
      when(() => user.emailVerified).thenReturn(false);
      when(() => firebaseAuth.currentUser).thenReturn(user);

      final result = authService.hasVerifiedEmail();

      expect(result, false);
    });
  });

  group('authenticateWithBiometrics', () {
    test('returns true if biometric authentication is successful', () async {
      when(() => localAuthentication.canCheckBiometrics)
          .thenAnswer((_) async => true);
      when(() => localAuthentication.isDeviceSupported())
          .thenAnswer((_) async => true);
      when(
        () => localAuthentication.authenticate(
          localizedReason: any(named: 'localizedReason'),
          options: any(named: 'options'),
        ),
      ).thenAnswer((_) async => true);

      final result = await authService.authenticateWithBiometrics();

      expect(result, true);
    });

    test('returns false if biometric authentication fails', () async {
      when(() => localAuthentication.canCheckBiometrics)
          .thenAnswer((_) async => true);
      when(() => localAuthentication.isDeviceSupported())
          .thenAnswer((_) async => true);
      when(
        () => localAuthentication.authenticate(
          localizedReason: any(named: 'localizedReason'),
          options: any(named: 'options'),
        ),
      ).thenAnswer((_) async => false);

      final result = await authService.authenticateWithBiometrics();

      expect(result, false);
    });

    test('returns false if biometric authentication is not available',
        () async {
      when(() => localAuthentication.canCheckBiometrics)
          .thenAnswer((_) async => false);
      when(() => localAuthentication.isDeviceSupported())
          .thenAnswer((_) async => false);
      final result = await authService.authenticateWithBiometrics();

      expect(result, false);
    });
  });

  group('canAuthenticateWithBiometrics', () {
    test('returns true if biometric authentication is available', () async {
      when(() => localAuthentication.canCheckBiometrics)
          .thenAnswer((_) async => true);
      when(() => localAuthentication.isDeviceSupported())
          .thenAnswer((_) async => true);

      final result = await authService.canAuthenticateWithBiometrics();

      expect(result, true);
    });

    test(
      'returns false if biometric authentication is not available',
      () async {
        when(() => localAuthentication.canCheckBiometrics)
            .thenAnswer((_) async => false);
        when(() => localAuthentication.isDeviceSupported())
            .thenAnswer((_) async => false);
        final result = await authService.canAuthenticateWithBiometrics();

        expect(result, false);
      },
    );
  });

  group('signOut', () {
    test('signs out user successfully', () async {
      when(() => googleSignIn.signOut()).thenAnswer((_) async => null);
      when(() => firebaseAuth.signOut()).thenAnswer((_) async {});

      await authService.signOut();

      verify(() => googleSignIn.signOut()).called(1);
      verify(() => firebaseAuth.signOut()).called(1);
    });
  });

  group('reloadUser', () {
    test('reloads user successfully', () async {
      final user = MockUser();
      when(() => firebaseAuth.currentUser).thenReturn(user);
      when(user.reload).thenAnswer((_) async {});

      await authService.reloadUser();

      verify(user.reload).called(1);
    });
  });
}
