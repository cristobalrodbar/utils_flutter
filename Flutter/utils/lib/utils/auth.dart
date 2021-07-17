import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';

abstract class BaseAuth {
  Future<User?> signIn(String email, String password);

  Future<User?> signUp(String email, String password);

  Future restablecerContrasenia(String email);

  Future<String?> getCurrentEmail();

  String getCurrentUID();

  Future<void> sendEmailVerification();

  Future<void> signOut();

  Future<bool> isEmailVerified();
}

final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

class Auth implements BaseAuth {
  Future<User?> signIn(String email, String password) async {
    UserCredential result = await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    return result.user;
  }

  Future<User?> signUp(String email, String password) async {
    User? user = (await _firebaseAuth.createUserWithEmailAndPassword(
            email: email, password: password))
        .user;
    return user;
  }

  Future restablecerContrasenia(String email) async {
    await _firebaseAuth.sendPasswordResetEmail(email: email);
  }

  Future<String?> getCurrentEmail() async {
    return _firebaseAuth.currentUser!.email;
  }

  String getCurrentUID() {
    return _firebaseAuth.currentUser!.uid;
  }

  Future<void> signOut() async {
    return _firebaseAuth.signOut();
  }

  Future<void> sendEmailVerification() async {
    _firebaseAuth.currentUser!.sendEmailVerification();
  }

  Future<bool> isEmailVerified() async {
    return _firebaseAuth.currentUser!.emailVerified;
  }
}
