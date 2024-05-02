import 'package:get_it/get_it.dart';
import 'package:hamzallc_auth/core/core.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
)
void configureDependencies() => getIt.init();
