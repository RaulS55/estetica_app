import 'package:estetica_app/ui/pages/home/home_controller.dart';
import 'package:estetica_app/ui/pages/home/tabs/profile_tab/widgets/avatar_row.dart';
import 'package:estetica_app/ui/pages/home/tabs/profile_tab/widgets/score_row.dart';
import 'package:estetica_app/ui/util/colors.dart';
import 'package:estetica_app/ui/util/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class ProfileItem extends StatelessWidget {
  ProfileItem({Key? key}) : super(key: key);
  final controller = GetIt.instance<HomeController>();
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Container(
      padding: EdgeInsets.all(responsive.dp(4)),
      width: double.infinity,
      decoration: BoxDecoration(
          color: primaryColor, borderRadius: BorderRadius.circular(35)),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //Avatar
            AvatarRow(responsive: responsive, image: controller.user.photoURL!),
            SizedBox(height: responsive.hp(1)),
            //Textos
            Text(
              controller.user.displayName!,
              style: TextStyle(
                  fontSize: responsive.dp(2.5),
                  fontWeight: FontWeight.w600,
                  color: whiteColor),
            ),
            const SizedBox(height: 10),
            Text(
              controller.user.email!,
              style: TextStyle(fontSize: responsive.dp(2), color: whiteColor),
            ),
            //Puntos y Ranking
            SizedBox(height: responsive.hp(2)),
            ScoreRow(responsive: responsive)
          ],
        ),
      ),
    );
  }
}
