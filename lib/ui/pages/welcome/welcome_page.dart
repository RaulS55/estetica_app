import 'package:estetica_app/ui/util/responsive.dart';
import 'package:estetica_app/ui/widgets/custom_buttom.dart';
import 'package:estetica_app/ui/widgets/image_border.dart';
import 'package:flutter/material.dart';

class WellcomePage extends StatelessWidget {
  const WellcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Scaffold(
      body: Column(
        children: [
          /*Container(
            height: responsive.hp(40),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/travel.jpg"), fit: BoxFit.cover),
            ),
          ),*/
          MyCustomPainter(),
          //Center(child: CustomButtom("Loging")),
        ],
      ),
    );
  }
}
