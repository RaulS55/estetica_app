import 'package:estetica_app/ui/util/colors.dart';
import 'package:estetica_app/ui/util/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(40),
          width: double.infinity,
          height: responsive.hp(40),
          decoration: BoxDecoration(
              color: primaryColor, borderRadius: BorderRadius.circular(35)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CupertinoButton(
                      padding: EdgeInsets.all(15),
                      borderRadius: BorderRadius.circular(100),
                      color: whiteColor.withOpacity(0.2),
                      onPressed: (() {}),
                      child: Icon(Icons.edit))
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
