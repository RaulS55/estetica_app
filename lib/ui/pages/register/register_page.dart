import 'package:estetica_app/ui/util/colors.dart';
import 'package:estetica_app/ui/util/responsive.dart';
import 'package:estetica_app/ui/widgets/appbar_item.dart';
import 'package:estetica_app/ui/widgets/custom_buttom.dart';
import 'package:estetica_app/ui/widgets/textfield_item.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);
  final dateController = TextEditingController();

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
                  //APPBAR
                  const AppBarItem(
                    icon: Icons.arrow_back_ios,
                    text: "Registro",
                  ),
                  const SizedBox(height: 15),

                  //NOMBRE CAMPO
                  const TextFieldItem(text: "Nombre"),

                  //EMAIL CAMPO
                  const TextFieldItem(text: "Correo"),

                  //FECHA CAMPO
                  TextFieldItem(
                    controller: dateController,
                    text: "Fecha de nacimiento",
                    suffixIcon: Icons.calendar_month_outlined,
                    readOnly: true,
                    onTap: () async {
                      initializeDateFormatting();
                      Intl.defaultLocale = 'es';
                      DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2101));

                      if (pickedDate != null) {
                        dateController.text =
                            DateFormat().add_yMMMMEEEEd().format(pickedDate);
                      }
                    },
                  ),

                  //TELEFONO CAMPO
                  const TextFieldItem(text: "Numero de telefono"),

                  //CONTRASE??A CAMPO
                  const TextFieldItem(text: "Contrase??a", obscureText: true),
                  const SizedBox(height: 20),

                  //BOTON REGISTRAR
                  const CustomButtom("Registrar", color: blackColor)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
