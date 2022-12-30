import 'package:estetica_app/ui/pages/home/tabs/calendar_tab/widgets/calendar_item.dart';
import 'package:estetica_app/ui/pages/home/tabs/calendar_tab/widgets/reservation_item.dart';
import 'package:estetica_app/ui/util/responsive.dart';
import 'package:flutter/material.dart';

class CalendarTab extends StatelessWidget {
  const CalendarTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(
          vertical: responsive.hp(2), horizontal: responsive.wp(3)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //CALENDARIO
          const CalendarItem(),
          SizedBox(height: responsive.hp(3)),

          //RESRVACIONES
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Citas",
              style: TextStyle(
                  fontSize: responsive.dp(3), fontWeight: FontWeight.w600),
            ),
          ),
          const ReservationItem(),
          const ReservationItem(),
        ],
      ),
    ));
  }
}
