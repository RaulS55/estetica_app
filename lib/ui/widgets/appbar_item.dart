import 'package:estetica_app/ui/util/colors.dart';
import 'package:estetica_app/ui/util/responsive.dart';
import 'package:flutter/material.dart';

class AppBarItem extends StatelessWidget {
  const AppBarItem(
      {Key? key, required this.icon, required this.text, this.subText})
      : super(key: key);
  final IconData icon;
  final String text;
  final String? subText;
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
                icon,
                size: responsive.dp(3),
              )),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (subText != null)
              Text(
                subText!,
                style:
                    TextStyle(color: greyColor, fontSize: responsive.dp(2.2)),
              ),
            Text(
              text,
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: responsive.dp(2.8)),
            ),
          ],
        )
      ],
    );
  }
}
