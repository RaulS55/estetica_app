import 'package:estetica_app/ui/pages/welcome/widgets/image_border.dart';
import 'package:estetica_app/ui/util/responsive.dart';
import 'package:flutter/material.dart';

class BackgroundWellcome extends StatelessWidget {
  const BackgroundWellcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Stack(
      children: [
        Image.asset(
          "assets/travel.jpg",
          fit: BoxFit.cover,
          height: responsive.hp(60),
        ),
        const MyCustomPainter(),
      ],
    );
  }
}
