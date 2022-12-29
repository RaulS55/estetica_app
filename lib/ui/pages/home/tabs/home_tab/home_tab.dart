import 'package:estetica_app/ui/pages/home/tabs/home_tab/widgets/map_item.dart';
import 'package:estetica_app/ui/pages/home/tabs/home_tab/widgets/sale_item.dart';
import 'package:estetica_app/ui/util/colors.dart';
import 'package:estetica_app/ui/util/responsive.dart';
import 'package:estetica_app/ui/widgets/appbar_item.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: responsive.hp(2), horizontal: responsive.wp(7)),
        child: Column(
          children: [
            const AppBarItem(
              icon: Icons.notifications_outlined,
              text: "Maria",
              subText: "Buenos días",
            ),
            SizedBox(height: responsive.hp(3)),
            const SaleItem(),
            SizedBox(height: responsive.hp(3)),
            const MapItem(),
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
