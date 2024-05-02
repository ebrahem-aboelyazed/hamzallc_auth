import 'package:go_router/go_router.dart';
import 'package:hamzallc_auth/core/core.dart';
import 'package:hamzallc_auth/modules/auth/auth.dart';
import 'package:hamzallc_auth/modules/auth/views/email_verification_page.dart';
import 'package:hamzallc_auth/modules/home/home.dart';
import 'package:injectable/injectable.dart';

part 'app_routes.dart';

@Singleton()
class AppPages {
  AppPages();

  final initial = Routes.initial;

  late final router = GoRouter(
    initialLocation: initial,
    debugLogDiagnostics: true,
    redirect: (context, state) {
      final auth = getIt.get<AuthService>();
      final user = auth.currentUser;
      final emailVerified = user?.emailVerified ?? false;

      final needsAuth =
          state.fullPath != Paths.login && state.fullPath != Paths.signUp;
      final needsVerification =
          user != null && state.fullPath != Paths.emailVerification;

      if (user == null && needsAuth) {
        return Paths.login;
      } else if (needsVerification && !emailVerified) {
        return Paths.emailVerification;
      }
      return null;
    },
    routes: [
      GoRoute(
        path: Routes.home,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: Routes.login,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: Routes.signUp,
        builder: (context, state) => const SignUpPage(),
      ),
      GoRoute(
        path: Routes.emailVerification,
        builder: (context, state) => const EmailVerificationPage(),
      ),
    ],
  );
}
