import 'package:firebase_auth/firebase_auth.dart';

class Login {
  static final Login _login = Login._internal();

  factory Login() => _login;

  Login._internal();

  Future<UserCredential?> login(String email, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return credential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }
}
