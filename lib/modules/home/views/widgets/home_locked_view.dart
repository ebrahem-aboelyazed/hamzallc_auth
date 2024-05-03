import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamzallc_auth/modules/auth/auth.dart';
import 'package:hamzallc_auth/utils/utils.dart';

class HomeLockedView extends StatefulWidget {
  const HomeLockedView({super.key});

  @override
  State<HomeLockedView> createState() => _HomeLockedViewState();
}

class _HomeLockedViewState extends State<HomeLockedView> {
  late final AuthCubit _authCubit;

  @override
  void initState() {
    super.initState();
    _authCubit = context.read<AuthCubit>();
    _authCubit.authenticateWithBiometrics();
  }

  @override
  Widget build(BuildContext context) {
    print('Built HomeLockedView');
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: context.height,
          width: context.width,
          child: Column(
            children: [
              const SizedBox(height: 70),
              const Icon(
                Icons.lock,
                color: Colors.blueGrey,
              ),
              const SizedBox(height: 16),
              const Text(
                'App is locked',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Expanded(
                child: Center(
                  child: TextButton(
                    onPressed: _authCubit.authenticateWithBiometrics,
                    child: const Text(
                      'Unlock',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}
