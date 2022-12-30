import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class HomeController extends ChangeNotifier {
  late UserCredential _credential;
  late User user;
  set credential(UserCredential valor) {
    _credential = valor;
    user = _credential.user!;
  }

  setUserValors() async {
    //_credential.user!.updateDisplayName("Maria Martinez");
    //_credential.user!.updatePhotoURL(
    //  "https://www.clarin.com/img/2015/03/20/HkwKuZR7x_1256x620.jpg");
    print(FirebaseAuth.instance.currentUser);
    //print(_credential.user!.reauthenticateWithCredential(_credential.credential.));
  }

  signOff() async {
    await FirebaseAuth.instance.signOut();
  }
}
