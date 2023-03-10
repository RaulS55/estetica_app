import 'package:estetica_app/ui/util/colors.dart';
import 'package:estetica_app/ui/util/responsive.dart';
import 'package:flutter/cupertino.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom(this.text,
      {Key? key,
      this.color = blackColor,
      this.onPressed,
      this.textColor = whiteColor})
      : super(key: key);
  final String text;
  final Color color;
  final Function()? onPressed;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Container(
        alignment: Alignment.center,
        height: responsive.hp(8),
        width: responsive.wp(85),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          text,
          style: TextStyle(
              color: textColor,
              fontSize: responsive.dp(2.8),
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
