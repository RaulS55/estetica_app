import 'package:estetica_app/ui/util/colors.dart';
import 'package:estetica_app/ui/util/responsive.dart';
import 'package:flutter/material.dart';

class ScoreRow extends StatelessWidget {
  const ScoreRow({
    Key? key,
    required this.responsive,
  }) : super(key: key);

  final Responsive responsive;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("78",
                style: TextStyle(
                    fontSize: responsive.dp(3.2),
                    color: whiteColor,
                    fontWeight: FontWeight.w500)),
            const SizedBox(height: 3),
            Text("Puntos",
                style:
                    TextStyle(fontSize: responsive.dp(1.8), color: whiteColor))
          ],
        ),
        Container(
          width: 2,
          height: responsive.hp(8),
          color: whiteColor,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("7",
                style: TextStyle(
                    fontSize: responsive.dp(3.2),
                    color: whiteColor,
                    fontWeight: FontWeight.w500)),
            const SizedBox(height: 3),
            Text("Ranking",
                style:
                    TextStyle(fontSize: responsive.dp(1.8), color: whiteColor))
          ],
        ),
      ],
    );
  }
}
