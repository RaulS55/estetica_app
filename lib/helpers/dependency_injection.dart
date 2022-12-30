import 'package:estetica_app/ui/pages/home/home_controller.dart';
import 'package:get_it/get_it.dart';

abstract class DependencyInjection {
  static void inicialize() {
    final homeController = HomeController();

    GetIt.instance.registerSingleton<HomeController>(homeController);
  }
}
