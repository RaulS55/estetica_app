import 'package:estetica_app/ui/pages/login/login_controller.dart';
import 'package:estetica_app/ui/util/responsive.dart';
import 'package:estetica_app/ui/widgets/appbar_item.dart';
import 'package:estetica_app/ui/widgets/custom_buttom.dart';
import 'package:estetica_app/ui/widgets/loading/loading_screem.dart';
import 'package:estetica_app/ui/widgets/no_account_row.dart';
import 'package:estetica_app/ui/widgets/textfield_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return ChangeNotifierProvider(
      create: (context) => LoginController(),
      builder: (context, child) {
        final loginController =
            Provider.of<LoginController>(context, listen: false);
        return Stack(
          children: [
            Scaffold(
              body: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: SafeArea(
                  child: SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: responsive.hp(2),
                          horizontal: responsive.wp(7)),
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          //APPBAR
                          const AppBarItem(
                              icon: Icons.arrow_back_ios, text: "Ingreso"),
                          SizedBox(height: responsive.hp(4)),

                          //EMAIL CAMPPO
                          TextFieldItem(
                              text: "Email",
                              onChanged: (text) =>
                                  loginController.email = text),

                          //CONTRASEÑA CAMPO
                          TextFieldItem(
                            text: "Contraseña",
                            onChanged: (text) =>
                                loginController.password = text,
                            obscureText: true,
                          ),

                          //BOTON LOGIN
                          SizedBox(height: responsive.hp(4)),
                          CustomButtom("Ingresar", onPressed: () {
                            FocusScope.of(context).unfocus();
                            loginController.loginUser(context);
                          }),

                          //CREAR NUEVA CUENTA
                          SizedBox(height: responsive.hp(4)),
                          NoAccountRow(responsive: responsive)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const LoadingScreem(blockReturn: true)
          ],
        );
      },
    );
  }
}
