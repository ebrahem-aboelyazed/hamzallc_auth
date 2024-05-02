abstract class AuthService {
  Future<bool> authenticateWithBiometrics();

  Future<bool> canAuthenticateWithBiometrics();
}
