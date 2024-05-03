import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hamzallc_auth/utils/utils.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

/// Manages initialization and access to Hive boxes for storing data securely.
@Singleton()
class HiveManager {
  // Initializations Methods

  /// Sets up a secure encryption key for encrypting sensitive data.
  ///
  /// Returns:
  ///   A Future that resolves to a Uint8List containing the encryption key.
  Future<Uint8List> _setupSecureKey() async {
    const secureStorage = FlutterSecureStorage();
    final containsEncryptionKey =
        await secureStorage.containsKey(key: AppConstants.secureBoxKey);
    if (!containsEncryptionKey) {
      final key = Hive.generateSecureKey();
      await secureStorage.write(
        key: AppConstants.secureBoxKey,
        value: base64UrlEncode(key),
      );
    }
    final value = await secureStorage.read(key: AppConstants.secureBoxKey);
    return base64Url.decode(value!);
  }

  /// Initializes the credentials box for storing sensitive data.
  ///
  /// Returns:
  ///   A Future that resolves to a Box<String>
  ///   representing the credentials box.
  Future<Box<String>> initializeCredentialsBox() async {
    final encryptionKey = await _setupSecureKey();
    return Hive.openBox<String>(
      AppConstants.credentialsBox,
      encryptionCipher: HiveAesCipher(encryptionKey),
    );
  }
}
