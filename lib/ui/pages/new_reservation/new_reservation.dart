import 'package:estetica_app/ui/pages/new_reservation/widgets/hour_item.dart';
import 'package:estetica_app/ui/util/responsive.dart';
import 'package:estetica_app/ui/widgets/appbar_item.dart';
import 'package:estetica_app/ui/widgets/textfield_item.dart';
import 'package:flutter/material.dart';

class NewReservation extends StatelessWidget {
  const NewReservation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: responsive.hp(2), horizontal: responsive.wp(7)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBarItem(icon: Icons.arrow_back_ios, text: "Agenda"),
            TextFieldItem(text: "Servicios"),
            TextFieldItem(text: "Fecha"),
            HourItem()
          ],
        ),
      ),
    );
  }
}
