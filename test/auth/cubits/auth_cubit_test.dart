import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hamzallc_auth/core/core.dart';
import 'package:hamzallc_auth/modules/auth/auth.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthService extends Mock implements AuthService {}

class MockUser extends Mock implements User {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late AuthCubit authCubit;
  late AuthService authService;

  setUp(() {
    authService = MockAuthService();
    authCubit = AuthCubit(authService: authService);
  });

  group('AuthCubit', () {
    blocTest<AuthCubit, AuthState>(
      'loginUser emits loading and loggedIn states when login is successful',
      setUp: () {
        when(() {
          return authService.loginUser(
            email: any(named: 'email'),
            password: any(named: 'password'),
          );
        }).thenAnswer((_) async => Right(MockUser()));
      },
      build: () => authCubit,
      act: (cubit) {
        return cubit.loginUser(
          email: 'test@example.com',
          password: 'password',
        );
      },
      expect: () {
        return const <AuthState>[
          AuthState.loading(),
          AuthState.loggedIn(),
        ];
      },
    );

    blocTest<AuthCubit, AuthState>(
      'loginUser emits loading and AuthFailure states when login fails',
      setUp: () {
        when(() {
          return authService.loginUser(
            email: any(named: 'email'),
            password: any(named: 'password'),
          );
        }).thenAnswer((_) async => const Left(Failure()));
      },
      build: () => authCubit,
      act: (cubit) =>
          cubit.loginUser(email: 'test@example.com', password: 'password'),
      expect: () {
        return const <AuthState>[
          AuthState.loading(),
          AuthFailure(Failure()),
        ];
      },
    );

    blocTest<AuthCubit, AuthState>(
      'registerUser emits loading and registered states'
      ' when registration is successful',
      setUp: () {
        when(() {
          return authService.registerUser(
            email: any(named: 'email'),
            password: any(named: 'password'),
            name: any(named: 'name'),
          );
        }).thenAnswer((_) async => Right(MockUser()));
      },
      build: () => authCubit,
      act: (cubit) => cubit.registerUser(
        email: 'test@example.com',
        password: 'password',
        name: 'Test User',
      ),
      expect: () {
        return const <AuthState>[
          AuthState.loading(),
          AuthState.registered(),
        ];
      },
    );

    blocTest<AuthCubit, AuthState>(
      'registerUser emits loading and AuthFailure states when'
      ' registration fails',
      setUp: () {
        when(() {
          return authService.registerUser(
            email: any(named: 'email'),
            password: any(named: 'password'),
            name: any(named: 'name'),
          );
        }).thenAnswer((_) async => const Left(Failure()));
      },
      build: () => authCubit,
      act: (cubit) => cubit.registerUser(
        email: 'test@example.com',
        password: 'password',
        name: 'Test User',
      ),
      expect: () {
        return const <AuthState>[
          AuthState.loading(),
          AuthFailure(Failure()),
        ];
      },
    );

    blocTest<AuthCubit, AuthState>(
      'signWithGoogle emits socialSignLoading and loggedIn states when'
      ' sign-in with Google is successful',
      setUp: () {
        when(() {
          return authService.signWithGoogle();
        }).thenAnswer((_) async => Right(MockUser()));
      },
      build: () => authCubit,
      act: (cubit) => cubit.signWithGoogle(),
      expect: () => const <AuthState>[
        AuthState.socialSignLoading(),
        AuthState.loggedIn(),
      ],
    );

    blocTest<AuthCubit, AuthState>(
      'signWithGoogle emits socialSignLoading and AuthFailure states when'
      ' sign-in with Google fails',
      setUp: () {
        when(() {
          return authService.signWithGoogle();
        }).thenAnswer((_) async => const Left(Failure()));
      },
      build: () => authCubit,
      act: (cubit) => cubit.signWithGoogle(),
      expect: () => const <AuthState>[
        AuthState.socialSignLoading(),
        AuthFailure(Failure()),
      ],
    );

    blocTest<AuthCubit, AuthState>(
      'sendVerificationEmail calls verifyEmail method of AuthService',
      setUp: () {
        when(() {
          return authService.verifyEmail();
        }).thenAnswer((_) async => const Right(null));
      },
      build: () => authCubit,
      act: (cubit) => cubit.sendVerificationEmail(),
      verify: (_) {
        verify(() => authService.verifyEmail()).called(1);
      },
    );

    blocTest<AuthCubit, AuthState>(
      'authenticateWithBiometrics emits loading and loggedIn states when'
      ' biometric authentication is successful',
      setUp: () {
        when(() {
          return authService.canAuthenticateWithBiometrics();
        }).thenAnswer((_) async => true);

        when(() {
          return authService.authenticateWithBiometrics();
        }).thenAnswer((_) async => true);
      },
      build: () => authCubit,
      act: (cubit) => cubit.authenticateWithBiometrics(),
      expect: () {
        return const <AuthState>[
          AuthState.loading(),
          AuthState.loggedIn(),
        ];
      },
    );

    blocTest<AuthCubit, AuthState>(
      'authenticateWithBiometrics emits loggedIn state when'
      ' biometric authentication is already done',
      setUp: () {
        authCubit.biometricAuthenticated = true;
      },
      build: () => authCubit,
      act: (cubit) => cubit.authenticateWithBiometrics(),
      expect: () => const <AuthState>[],
    );

    blocTest<AuthCubit, AuthState>(
      'authenticateWithBiometrics emits loggedIn state when'
      ' biometric authentication is not available',
      setUp: () {
        authCubit.biometricAuthenticated = false;
        when(() {
          return authService.canAuthenticateWithBiometrics();
        }).thenAnswer((_) async => false);
      },
      build: () => authCubit,
      act: (cubit) => cubit.authenticateWithBiometrics(),
      expect: () => const <AuthState>[
        AuthState.loading(),
        AuthState.loggedIn(),
      ],
    );

    blocTest<AuthCubit, AuthState>(
      'signOut emits loading and loggedOut states when sign-out is successful',
      setUp: () {
        when(() {
          return authService.signOut();
        }).thenAnswer((_) async => {});
      },
      build: () => authCubit,
      act: (cubit) => cubit.signOut(),
      expect: () {
        return const <AuthState>[
          AuthState.loading(),
          AuthState.loggedOut(),
        ];
      },
    );

    blocTest<AuthCubit, AuthState>(
      'reloadUser calls reloadUser method of AuthService',
      setUp: () {
        when(() {
          return authService.reloadUser();
        }).thenAnswer((_) async => {});
      },
      build: () => authCubit,
      act: (cubit) => cubit.reloadUser(),
      verify: (_) {
        verify(() => authService.reloadUser()).called(1);
      },
    );
  });
}
