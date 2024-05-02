import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hamzallc_auth/core/core.dart';
import 'package:hive_flutter/hive_flutter.dart';

class AppHelper {
  const AppHelper._();

  static Future<void> configureApp() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    configureDependencies();
    await _initHive();
  }

  static Future<void> _initHive() async {
    final hiveManager = getIt.get<HiveManager>();
    await Hive.initFlutter();
    await hiveManager.initializeCredentialsBox();
  }
}
