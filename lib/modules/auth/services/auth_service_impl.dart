import 'package:flutter/services.dart';
import 'package:hamzallc_auth/modules/auth/auth.dart';
import 'package:injectable/injectable.dart';
import 'package:local_auth/local_auth.dart';

@LazySingleton(as: AuthService)
class AuthServiceImpl implements AuthService {
  AuthServiceImpl(this._localAuthentication);

  final LocalAuthentication _localAuthentication;

  @override
  Future<bool> authenticateWithBiometrics() async {
    try {
      final canAuthenticate = await canAuthenticateWithBiometrics();
      if (!canAuthenticate) return false;
      final didAuthenticate = await _localAuthentication.authenticate(
        localizedReason: 'Please authenticate to login in your account',
      );
      return didAuthenticate;
    } on PlatformException {
      return false;
    }
  }

  @override
  Future<bool> canAuthenticateWithBiometrics() async {
    final canAuthenticateWithBiometrics =
        await _localAuthentication.canCheckBiometrics;
    final canAuthenticate = canAuthenticateWithBiometrics ||
        await _localAuthentication.isDeviceSupported();
    return canAuthenticate;
  }
}
