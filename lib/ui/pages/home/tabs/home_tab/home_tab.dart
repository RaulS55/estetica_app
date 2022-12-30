import 'package:estetica_app/ui/pages/home/home_controller.dart';
import 'package:estetica_app/ui/pages/home/tabs/home_tab/widgets/map_item.dart';
import 'package:estetica_app/ui/pages/home/tabs/home_tab/widgets/sale_item.dart';
import 'package:estetica_app/ui/util/colors.dart';
import 'package:estetica_app/ui/util/responsive.dart';
import 'package:estetica_app/ui/widgets/appbar_item.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class HomeTab extends StatelessWidget {
  HomeTab({Key? key}) : super(key: key);
  final controller = GetIt.instance<HomeController>();
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: responsive.hp(2), horizontal: responsive.wp(7)),
        child: Column(
          children: [
            //APPBAR
            AppBarItem(
              icon: Icons.notifications_outlined,
              text: controller.user.displayName!.split(" ").first,
              subText: "Buenos días",
              onPressed: () {},
            ),

            //OFERTAS
            SizedBox(height: responsive.hp(3)),
            const SaleItem(),
            //MAPA
            SizedBox(height: responsive.hp(3)),
            const MapItem(),

            //TEXTO FINAL
            SizedBox(height: responsive.hp(3)),
            Text(
              "Lorem ipsum is a placeholder text commonly the visual form",
              textAlign: TextAlign.center,
              style: TextStyle(color: greyColor, fontSize: responsive.dp(2.3)),
            )
          ],
        ),
      ),
    );
  }
}
