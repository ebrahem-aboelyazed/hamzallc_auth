import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hamzallc_auth/modules/auth/auth.dart';
import 'package:hamzallc_auth/routes/routes.dart';
import 'package:hamzallc_auth/utils/utils.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Form(
          key: context.read<AuthCubit>().loginFormKey,
          child: BlocListener<AuthCubit, AuthState>(
            listener: (context, state) {
              state.whenOrNull(
                failure: context.showErrorSnackBar,
                loggedIn: () => context.go(Routes.home),
              );
            },
            child: const LoginView(),
          ),
        ),
      ),
    );
  }
}
