import 'package:conectar_facebook/Repository/auth_firebase.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
  final _authFirebase = AuthFirebase();
  Future<UserCredential?>? signInFirebase() =>_authFirebase.signInWithFacebook();
}