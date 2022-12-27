import 'package:estetica_app/ui/util/colors.dart';
import 'package:estetica_app/ui/util/responsive.dart';
import 'package:flutter/material.dart';

class AppBarItem extends StatelessWidget {
  const AppBarItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          alignment: Alignment.center,
          width: responsive.dp(7),
          height: responsive.dp(7),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: greyColor, width: 2)),
          child: IconButton(
              onPressed: Navigator.of(context).pop,
              icon: Icon(
                Icons.arrow_back_ios,
                size: responsive.dp(3),
              )),
        ),
        Text(
          "Registro",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: responsive.dp(2.8)),
        )
      ],
    );
  }
}
