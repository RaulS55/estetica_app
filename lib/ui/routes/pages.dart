import 'package:estetica_app/ui/pages/home/home_page.dart';
import 'package:estetica_app/ui/pages/register/register_page.dart';
import 'package:estetica_app/ui/pages/welcome/welcome_page.dart';
import 'package:estetica_app/ui/routes/routes.dart';
import 'package:flutter/widgets.dart';

abstract class Pages {
  // ignore: constant_identifier_names
  static const String INITIAL = Routes.WELLCOME;
  static final Map<String, Widget Function(BuildContext)> routes = {
    Routes.HOME: (_) => const HomePage(),
    Routes.WELLCOME: (_) => const WellcomePage(),
    Routes.REGISTER: (_) => const RegisterPage(),
    //Routes.SPASH: (_) => const SpashPage(),
    //Routes.LOGIN: (_) => const LoginPage(),
  };
}
