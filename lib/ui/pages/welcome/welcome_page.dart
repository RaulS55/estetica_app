import 'package:estetica_app/ui/pages/welcome/widgets/background.dart';
import 'package:estetica_app/ui/routes/routes.dart';
import 'package:estetica_app/ui/util/colors.dart';
import 'package:estetica_app/ui/util/responsive.dart';
import 'package:estetica_app/ui/widgets/custom_buttom.dart';
import 'package:estetica_app/ui/widgets/no_account_row.dart';
import 'package:flutter/material.dart';

class WellcomePage extends StatelessWidget {
  const WellcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            const BackgroundWellcome(),
            SizedBox(
              height: responsive.hp(38),
              child: Column(
                children: [
                  Text(
                    "We are here to make your\nholiday easier",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: blackColor,
                        fontSize: responsive.dp(3),
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: responsive.hp(2)),
                  Text(
                    "Lorem ipsum is a placeholder commonly \nthe visual form document ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: responsive.dp(2),
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: responsive.hp(4)),
                  CustomButtom(
                    "Loging",
                    onPressed: () => Navigator.pushNamed(context, Routes.LOGIN),
                  ),
                  SizedBox(height: responsive.hp(4)),
                  NoAccountRow(responsive: responsive)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
