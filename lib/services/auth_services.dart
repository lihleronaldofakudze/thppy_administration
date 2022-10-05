import 'package:firebase_auth/firebase_auth.dart';
import 'package:thppy_administration/models/CurrentUser.dart';

class AuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  CurrentUser? _userFromFirebase(User? user) {
    return user != null
        ? CurrentUser(
            uid: user.uid, email: user.email, isVerified: user.emailVerified)
        : null;
  }

  Stream<CurrentUser?> get user {
    return _auth.authStateChanges().map(_userFromFirebase);
  }
}
