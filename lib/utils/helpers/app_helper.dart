import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hamzallc_auth/core/core.dart';
import 'package:hive_flutter/hive_flutter.dart';

/// A helper class for configuring the application
/// and performing initialization tasks.
class AppHelper {
  const AppHelper._();

  /// Configures the application.
  ///
  /// Ensures the Flutter widgets are initialized, initializes Firebase,
  /// configures dependencies, and initializes Hive database.
  static Future<void> configureApp() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    configureDependencies();
    await _initHive();
  }

  /// Initializes the Hive database.
  ///
  /// Initializes Hive database and its credentials box.
  static Future<void> _initHive() async {
    final hiveManager = getIt.get<HiveManager>();
    await Hive.initFlutter();
    await hiveManager.initializeCredentialsBox();
  }
}
