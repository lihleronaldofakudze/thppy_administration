import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:thppy_administration/models/CurrentUser.dart';

class AuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  CurrentUser? _userFromFirebase(User? user) {
    return user != null
        ? CurrentUser(
            uid: user.uid,
            email: user.email,
            isVerified: user.emailVerified,
          )
        : null;
  }

  Stream<CurrentUser?> get user {
    return _auth.authStateChanges().map(_userFromFirebase);
  }

  Future<CurrentUser?> login({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return _userFromFirebase(userCredential.user);
    } catch (error) {
      debugPrint(error.toString());
      return null;
    }
  }

  Future? logout() {
    try {
      return _auth.signOut();
    } catch (error) {
      debugPrint(error.toString());
      return null;
    }
  }
}
