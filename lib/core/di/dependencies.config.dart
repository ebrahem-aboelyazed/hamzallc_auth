// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:local_auth/local_auth.dart' as _i7;

import '../../modules/auth/auth.dart' as _i5;
import '../../modules/auth/services/auth_service_impl.dart' as _i6;
import '../../routes/app_pages.dart' as _i4;
import '../api/local/hive_manager.dart' as _i3;

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
    gh.singleton<_i3.HiveManager>(() => _i3.HiveManager());
    gh.singleton<_i4.AppPages>(() => _i4.AppPages());
    gh.lazySingleton<_i5.AuthService>(
        () => _i6.AuthServiceImpl(gh<_i7.LocalAuthentication>()));
    return this;
  }
}
