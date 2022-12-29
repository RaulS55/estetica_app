import 'package:estetica_app/ui/util/colors.dart';
import 'package:estetica_app/ui/util/responsive.dart';
import 'package:flutter/material.dart';

class ServicesList extends StatelessWidget {
  const ServicesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return SizedBox(
      height: responsive.hp(20),
      child: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        children: [
          _ServiceItem("Queratina"),
          _ServiceItem("Botox"),
          _ServiceItem("Laser"),
          _ServiceItem("Laser"),
        ],
      ),
    );
  }
}

class _ServiceItem extends StatelessWidget {
  const _ServiceItem(this.text, {Key? key}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: greyligthColor),
          ),
          SizedBox(height: 3),
          Text(
            text,
            style: TextStyle(fontSize: 22),
          )
        ],
      ),
    );
  }
}
