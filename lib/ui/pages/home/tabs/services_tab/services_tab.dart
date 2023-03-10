import 'package:estetica_app/ui/pages/home/home_controller.dart';
import 'package:estetica_app/ui/pages/home/tabs/services_tab/widgets/services_list.dart';
import 'package:estetica_app/ui/util/colors.dart';
import 'package:estetica_app/ui/util/responsive.dart';
import 'package:estetica_app/ui/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class ServicesTab extends StatelessWidget {
  const ServicesTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: responsive.hp(2)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //LISTA DE SERVICIOS
            Center(
              child: Text("Servicios",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: responsive.dp(2.8))),
            ),
            SizedBox(height: responsive.hp(2)),
            const ServicesList(),

            //DETALLE DE SERVICIOS
            SizedBox(height: responsive.hp(2)),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              height: responsive.hp(40),
              decoration: BoxDecoration(
                  color: primaryColor, borderRadius: BorderRadius.circular(30)),
            ),

            //MAS INFORMACION BOTON
            SizedBox(height: responsive.hp(4)),
            Center(
                child: CustomButtom(
              "Mas información",
              onPressed: () {
                final controller = GetIt.instance<HomeController>();
                controller.setUserValors();
              },
            ))
          ],
        ),
      ),
    );
  }
}
