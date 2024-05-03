import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hamzallc_auth/common/common.dart';
import 'package:hamzallc_auth/modules/auth/auth.dart';
import 'package:hamzallc_auth/routes/routes.dart';
import 'package:hamzallc_auth/utils/utils.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  String name = '';
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AuthCubit>();
    return Column(
      children: [
        const CustomHeader(text: 'SIGN UP'),
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
                  NameField(
                    onChanged: (value) => name = value,
                    hint: 'Enter name',
                    label: 'Name',
                  ),
                  const SizedBox(height: Dimensions.paddingDefault),
                  EmailField(
                    onChanged: (value) => email = value,
                  ),
                  const SizedBox(height: Dimensions.paddingDefault),
                  PasswordField(
                    onChanged: (value) => password = value,
                  ),
                  const SizedBox(height: Dimensions.paddingExtraLarge),
                  BlocBuilder<AuthCubit, AuthState>(
                    builder: (context, state) {
                      return IgnorePointer(
                        ignoring: state is AuthSocialSignLoading,
                        child: PrimaryButton(
                          onPressed: () async {
                            await cubit.registerUser(
                              email: email,
                              password: password,
                              name: name,
                            );
                          },
                          loading: state is AuthLoading,
                          text: 'CREATE NEW ACCOUNT',
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
                          text: 'SIGN UP WITH GOOGLE',
                          loadingText: 'SIGNING UP WITH GOOGLE...',
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: Dimensions.paddingDefault),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account?',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          context.go(Routes.login);
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
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
