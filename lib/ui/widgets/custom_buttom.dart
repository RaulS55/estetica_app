import 'package:estetica_app/ui/util/colors.dart';
import 'package:estetica_app/ui/util/responsive.dart';
import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom(this.text, {Key? key, this.color = blackColor})
      : super(key: key);
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Container(
      alignment: Alignment.center,
      height: responsive.hp(9),
      width: responsive.wp(85),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        text,
        style: TextStyle(
            color: whiteColor,
            fontSize: responsive.dp(3),
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
