import 'package:estetica_app/ui/util/colors.dart';
import 'package:estetica_app/ui/util/responsive.dart';
import 'package:flutter/material.dart';

class HourItem extends StatelessWidget {
  const HourItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return SizedBox(
      height: responsive.hp(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Hora",
            style: TextStyle(color: greyColor, fontSize: responsive.dp(2.5)),
          ),
          Flexible(
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              children: [
                Container(
                  width: double.infinity,
                  color: Colors.amber,
                ),
                Container(
                  width: double.infinity,
                  color: Colors.amber,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
