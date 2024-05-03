import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamzallc_auth/modules/auth/auth.dart';
import 'package:hamzallc_auth/utils/utils.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    print('Built HomeView');
    final authCubit = context.read<AuthCubit>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: authCubit.signOut,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.redAccent,
            fixedSize: Size.fromWidth(
              context.widthPercentage(0.6),
            ),
          ),
          child: const Text(
            'Logout',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
