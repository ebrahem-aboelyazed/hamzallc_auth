// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:local_auth/local_auth.dart' as _i4;

import '../../modules/auth/auth.dart' as _i8;
import '../../modules/auth/services/auth_service_impl.dart' as _i9;
import '../../routes/app_pages.dart' as _i7;
import '../api/local/hive_manager.dart' as _i6;
import 'register_module.dart' as _i10;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i3.FirebaseAuth>(() => registerModule.firebaseAuth);
    gh.factory<_i4.LocalAuthentication>(
        () => registerModule.localAuthentication);
    gh.factory<_i5.GoogleSignIn>(() => registerModule.googleSignIn);
    gh.singleton<_i6.HiveManager>(() => _i6.HiveManager());
    gh.singleton<_i7.AppPages>(() => _i7.AppPages());
    gh.lazySingleton<_i8.AuthService>(() => _i9.AuthServiceImpl(
          gh<_i3.FirebaseAuth>(),
          gh<_i4.LocalAuthentication>(),
          gh<_i5.GoogleSignIn>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i10.RegisterModule {}
