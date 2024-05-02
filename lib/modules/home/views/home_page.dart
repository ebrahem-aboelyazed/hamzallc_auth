import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hamzallc_auth/modules/auth/auth.dart';
import 'package:hamzallc_auth/modules/home/home.dart';
import 'package:hamzallc_auth/routes/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final authCubit = context.read<AuthCubit>();
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
          loggedOut: () => context.go(Routes.login),
        );
      },
      builder: (context, state) {
        final authenticated = authCubit.biometricAuthenticated;
        return authenticated ? const HomeView() : const HomeLockedView();
      },
    );
  }
}
