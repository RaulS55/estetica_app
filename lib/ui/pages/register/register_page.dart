import 'package:estetica_app/ui/util/colors.dart';
import 'package:estetica_app/ui/util/responsive.dart';
import 'package:estetica_app/ui/widgets/appbar_item.dart';
import 'package:estetica_app/ui/widgets/custom_buttom.dart';
import 'package:estetica_app/ui/widgets/textfield_item.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.of(context).padding;
    final responsive = Responsive(context);
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
              padding: EdgeInsets.symmetric(
                  vertical: responsive.hp(2), horizontal: responsive.wp(7)),
              width: double.infinity,
              height: responsive.hp(98) - padding.top - padding.bottom,
              color: Colors.transparent,
              child: Column(
                children: [
                  AppBarItem(),
                  SizedBox(height: 15),
                  TextFieldItem(text: "Nombre"),
                  TextFieldItem(text: "Correo"),
                  TextFieldItem(
                    text: "Fecha de nacimiento",
                    suffixIcon: Icons.calendar_month_outlined,
                    onPressed: () {},
                  ),
                  TextFieldItem(text: "Correo"),
                  TextFieldItem(text: "Correo"),
                  SizedBox(height: 20),
                  CustomButtom("Agendar cita", color: blackColor)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
