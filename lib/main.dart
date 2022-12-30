import 'package:estetica_app/data/services/firebase_options.dart';
import 'package:estetica_app/helpers/dependency_injection.dart';
import 'package:estetica_app/ui/pages/home/home_controller.dart';
import 'package:estetica_app/ui/routes/pages.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DependencyInjection.inicialize();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(ChangeNotifierProvider(
      create: (context) => HomeController(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Estetica App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      routes: Pages.routes,
      initialRoute: Pages.INITIAL,
    );
  }
}
