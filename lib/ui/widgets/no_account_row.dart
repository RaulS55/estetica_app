import 'package:estetica_app/ui/routes/routes.dart';
import 'package:estetica_app/ui/util/colors.dart';
import 'package:estetica_app/ui/util/responsive.dart';
import 'package:flutter/material.dart';

class NoAccountRow extends StatelessWidget {
  const NoAccountRow({
    Key? key,
    required this.responsive,
  }) : super(key: key);

  final Responsive responsive;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "¿No tienes cuenta? ",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: blackColor,
              fontSize: responsive.dp(2.3),
              fontWeight: FontWeight.w500),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, Routes.REGISTER),
          child: Text(
            "Regístrate",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: secundaryColor,
                fontSize: responsive.dp(2.3),
                fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
