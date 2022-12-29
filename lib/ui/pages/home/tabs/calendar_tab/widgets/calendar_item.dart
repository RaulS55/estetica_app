import 'package:estetica_app/ui/util/colors.dart';
import 'package:estetica_app/ui/util/responsive.dart';
import 'package:estetica_app/ui/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';

class CalendarItem extends StatelessWidget {
  const CalendarItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Container(
      padding: EdgeInsets.symmetric(vertical: responsive.hp(3)),
      width: double.infinity,
      height: responsive.hp(35),
      decoration: BoxDecoration(
          color: primaryColor, borderRadius: BorderRadius.circular(30)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: responsive.wp(7)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  color: whiteColor,
                ),
                Text(
                  "Diciembre",
                  style: TextStyle(
                      color: whiteColor,
                      fontSize: responsive.dp(2.8),
                      fontWeight: FontWeight.w500),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: whiteColor,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _DateItem(responsive: responsive, isSelect: false),
              _DateItem(responsive: responsive, isSelect: false),
              _DateItem(responsive: responsive, isSelect: true),
              _DateItem(responsive: responsive, isSelect: false),
              _DateItem(responsive: responsive, isSelect: false),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: responsive.wp(7)),
            child: CustomButtom("Agendar cita",
                color: whiteColor, textColor: blackColor),
          )
        ],
      ),
    );
  }
}

class _DateItem extends StatelessWidget {
  const _DateItem({
    Key? key,
    required this.responsive,
    required this.isSelect,
  }) : super(key: key);

  final Responsive responsive;
  final bool isSelect;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: responsive.wp(16),
      height: responsive.hp(11),
      decoration: BoxDecoration(
          color: isSelect ? whiteColor : Colors.transparent,
          border: Border.all(color: whiteColor),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Mier",
            style: TextStyle(color: isSelect ? blackColor : whiteColor),
          ),
          Text(
            "29",
            style: TextStyle(
                color: isSelect ? blackColor : whiteColor,
                fontSize: responsive.dp(3),
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
