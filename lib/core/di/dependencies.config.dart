// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:local_auth/local_auth.dart' as _i4;

import '../../modules/auth/auth.dart' as _i7;
import '../../modules/auth/services/auth_service_impl.dart' as _i8;
import '../../routes/app_pages.dart' as _i6;
import '../api/local/hive_manager.dart' as _i5;
import 'register_module.dart' as _i9;

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
    gh.singleton<_i5.HiveManager>(() => _i5.HiveManager());
    gh.singleton<_i6.AppPages>(() => _i6.AppPages());
    gh.lazySingleton<_i7.AuthService>(() => _i8.AuthServiceImpl(
          gh<_i3.FirebaseAuth>(),
          gh<_i4.LocalAuthentication>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i9.RegisterModule {}
