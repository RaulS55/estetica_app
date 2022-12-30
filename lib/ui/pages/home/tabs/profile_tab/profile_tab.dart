import 'package:estetica_app/ui/pages/home/home_controller.dart';
import 'package:estetica_app/ui/pages/home/tabs/profile_tab/widgets/profile_item.dart';
import 'package:estetica_app/ui/pages/home/tabs/profile_tab/widgets/profile_list_tile.dart';
import 'package:estetica_app/ui/routes/routes.dart';
import 'package:estetica_app/ui/util/responsive.dart';
import 'package:estetica_app/ui/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class ProfileTab extends StatelessWidget {
  ProfileTab({Key? key}) : super(key: key);
  final controller = GetIt.instance<HomeController>();
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Column(
      children: [
        ProfileItem(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Column(
            children: [
              const ProfileListTile(
                  text: "Notificaciones",
                  icon: Icons.notifications,
                  iconColor: Colors.pinkAccent),
              const ProfileListTile(
                  text: "Terminos y condiciones",
                  icon: Icons.bookmark,
                  iconColor: Colors.lightBlue),
              SizedBox(height: responsive.hp(4)),
              CustomButtom(
                "Cerrar Sesion",
                onPressed: () {
                  controller.signOff();
                  Navigator.popAndPushNamed(context, Routes.WELLCOME);
                },
              )
            ],
          ),
        ),
      ],
    );
  }
}
