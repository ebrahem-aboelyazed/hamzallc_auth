import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:local_auth/local_auth.dart';

@module
abstract class RegisterModule {
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  LocalAuthentication get localAuthentication => LocalAuthentication();

  GoogleSignIn get googleSignIn => GoogleSignIn();
}
