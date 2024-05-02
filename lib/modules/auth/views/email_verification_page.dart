import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hamzallc_auth/modules/auth/auth.dart';
import 'package:hamzallc_auth/routes/routes.dart';

class EmailVerificationPage extends StatefulWidget {
  const EmailVerificationPage({super.key});

  @override
  State<EmailVerificationPage> createState() => _EmailVerificationPageState();
}

class _EmailVerificationPageState extends State<EmailVerificationPage> {
  late AuthCubit authCubit;
  late final StreamSubscription<User?> userSubscription;
  Timer? _timer;
  Timer? _verificationTimer;
  int _seconds = 60;
  bool _isResendDisabled = true;

  @override
  void initState() {
    super.initState();
    initialize();
  }

  @override
  Widget build(BuildContext context) {
    final user = authCubit.currentUser;
    return BlocListener<AuthCubit, AuthState>(
      listenWhen: (prev, current) => current is AuthLoggedOut,
      listener: (context, state) {
        state.whenOrNull(
          loggedOut: () => context.go(Routes.login),
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Email Verification',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () async {
                await authCubit.signOut();
              },
              icon: const Icon(Icons.logout),
              color: Colors.red,
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'A verification email has been sent to your email address:',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '${user?.email}',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _isResendDisabled ? null : resendEmail,
                child: const Text('Resend Email'),
              ),
              const SizedBox(height: 20),
              if (_seconds != 0) ...{
                Text(
                  'Resend email in $_seconds seconds.',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              },
            ],
          ),
        ),
      ),
    );
  }

  void initialize() {
    authCubit = context.read<AuthCubit>();
    userSubscription = authCubit.userStream.listen((event) {
      if (event?.emailVerified ?? false) {
        context.go(Routes.home);
      }
    });
    _verificationTimer = Timer.periodic(const Duration(seconds: 30), (_) {
      authCubit.reloadUser();
    });
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (_) {
        if (_seconds > 0) {
          setState(() => _seconds--);
        } else {
          setState(() {
            _isResendDisabled = false;
            _timer?.cancel();
          });
        }
      },
    );
  }

  Future<void> resendEmail() async {
    await authCubit.sendVerificationEmail();
    setState(() {
      _seconds = 60;
      _isResendDisabled = true;
    });
    startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _verificationTimer?.cancel();
    userSubscription.cancel();
    super.dispose();
  }
}
