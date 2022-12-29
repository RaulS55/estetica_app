import 'package:estetica_app/ui/util/responsive.dart';
import 'package:flutter/material.dart';

class MapItem extends StatelessWidget {
  const MapItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);

    return Container(
      width: double.infinity,
      height: responsive.hp(40),
      decoration: BoxDecoration(
          color: Colors.grey.shade300, borderRadius: BorderRadius.circular(20)),
    );
  }
}
