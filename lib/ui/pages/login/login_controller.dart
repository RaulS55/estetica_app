import 'package:estetica_app/data/controllers/login.dart';
import 'package:estetica_app/ui/pages/home/home_controller.dart';
import 'package:estetica_app/ui/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';

class LoginController extends ChangeNotifier {
  String _email = "";
  String _password = "";

  set email(String valor) => _email = valor;
  set password(String valor) => _password = valor;

  loginUser(BuildContext context) async {
    final credential = await Login().login(_email, _password);
    if (credential != null) {
      //credential.user!.updateDisplayName("Carla Mendez");
      //credential.user!.updatePhotoURL(
      //    "https://dedicatoria.net/wp-content/uploads/2017/08/mujer-sonriente.jpg");
      GetIt.instance<HomeController>().credential = credential;
      Navigator.pushNamed(context, Routes.HOME);
    } else {
      print("Error");
    }
  }
}
