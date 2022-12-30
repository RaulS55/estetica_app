import 'package:estetica_app/ui/util/colors.dart';
import 'package:estetica_app/ui/util/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileListTile extends StatelessWidget {
  const ProfileListTile({
    Key? key,
    required this.text,
    required this.icon,
    required this.iconColor,
  }) : super(key: key);
  final String text;
  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        onTap: () {},
        leading: CupertinoButton(
            padding: EdgeInsets.zero,
            color: greyligthColor,
            child: Icon(
              icon,
              color: iconColor,
            ),
            onPressed: () {}),
        title: Text(
          text,
          style: TextStyle(fontSize: responsive.dp(1.8)),
        ),
        trailing: CupertinoButton(
            child: Icon(
              Icons.arrow_forward_ios,
              color: blackColor,
            ),
            onPressed: () {}),
      ),
    );
  }
}
