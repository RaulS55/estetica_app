import 'package:estetica_app/ui/util/colors.dart';
import 'package:estetica_app/ui/util/responsive.dart';
import 'package:flutter/material.dart';

class ReservationItem extends StatelessWidget {
  const ReservationItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Container(
      margin: EdgeInsets.symmetric(vertical: responsive.hp(2)),
      height: responsive.hp(10),
      child: Row(
        children: [
          SizedBox(
              width: responsive.wp(20),
              child: Center(
                  child: Text(
                "9:00",
                style: TextStyle(color: greyColor, fontSize: responsive.dp(2)),
              ))),
          Container(
            width: responsive.wp(3),
            decoration: const BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10))),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: responsive.wp(3)),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: greyligthColor, blurRadius: 0.5)
                  ],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Botox Capilar",
                    style: TextStyle(fontSize: responsive.dp(2)),
                  ),
                  Text(
                    "3 De Julio",
                    style:
                        TextStyle(fontSize: responsive.dp(2), color: greyColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
