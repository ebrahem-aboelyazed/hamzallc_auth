import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hamzallc_auth/common/common.dart';
import 'package:hamzallc_auth/modules/auth/auth.dart';
import 'package:hamzallc_auth/routes/routes.dart';
import 'package:hamzallc_auth/utils/utils.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  String _email = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AuthCubit>();
    return Column(
      children: [
        const CustomHeader(text: 'LOGIN', showBack: false),
        const SizedBox(height: Dimensions.paddingDefault),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: FadeInUp(
              child: Column(
                children: [
                  const SizedBox(height: Dimensions.paddingMax),
                  EmailField(
                    onChanged: (value) => _email = value,
                  ),
                  const SizedBox(height: Dimensions.paddingDefault),
                  PasswordField(
                    onChanged: (value) => _password = value,
                  ),
                  const SizedBox(
                    height: Dimensions.paddingExtraLarge,
                  ),
                  BlocBuilder<AuthCubit, AuthState>(
                    builder: (context, state) {
                      return IgnorePointer(
                        ignoring: state is AuthSocialSignLoading,
                        child: PrimaryButton(
                          onPressed: () async {
                            await cubit.loginUser(
                              email: _email,
                              password: _password,
                            );
                          },
                          loading: state is AuthLoading,
                          text: 'LOGIN',
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: Dimensions.paddingMax),
                  BlocBuilder<AuthCubit, AuthState>(
                    builder: (context, state) {
                      return IgnorePointer(
                        ignoring: state is AuthLoading,
                        child: GoogleSignButton(
                          onPressed: cubit.signWithGoogle,
                          loading: state is AuthSocialSignLoading,
                          text: 'SIGN IN WITH GOOGLE',
                          loadingText: 'SIGNING IN WITH GOOGLE...',
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: Dimensions.paddingDefault),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account yet?",
                        style: TextStyle(color: Colors.black87, fontSize: 14),
                      ),
                      TextButton(
                        onPressed: () => context.push(Routes.signUp),
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: Dimensions.paddingDefault),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
