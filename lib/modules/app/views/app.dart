import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamzallc_auth/core/core.dart';
import 'package:hamzallc_auth/modules/auth/auth.dart';
import 'package:hamzallc_auth/routes/routes.dart';
import 'package:hamzallc_auth/utils/utils.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthCubit>(
          create: (BuildContext context) {
            return AuthCubit(
              authService: getIt.get<AuthService>(),
            );
          },
        ),
      ],
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: MaterialApp.router(
          routerConfig: getIt.get<AppPages>().router,
          debugShowCheckedModeBanner: false,
          locale: const Locale('en'),
          theme: lightTheme,
        ),
      ),
    );
  }
}
