import 'package:cached_network_image/cached_network_image.dart';
import 'package:estetica_app/ui/util/colors.dart';
import 'package:estetica_app/ui/util/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AvatarRow extends StatelessWidget {
  const AvatarRow({
    Key? key,
    required this.responsive,
    required this.image,
  }) : super(key: key);

  final Responsive responsive;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CupertinoButton(
            padding: const EdgeInsets.all(15),
            borderRadius: BorderRadius.circular(100),
            color: whiteColor.withOpacity(0.2),
            onPressed: (() {}),
            child: const Icon(Icons.edit)),
        Container(
          padding: EdgeInsets.all(responsive.dp(0.5)),
          width: responsive.dp(12),
          height: responsive.dp(12),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: whiteColor, width: 5)),
          child: CircleAvatar(
            backgroundColor: greyligthColor,
            backgroundImage: CachedNetworkImageProvider(
              image,
            ),
          ),
        ),
        CupertinoButton(
            padding: const EdgeInsets.all(15),
            borderRadius: BorderRadius.circular(100),
            color: whiteColor.withOpacity(0.2),
            onPressed: (() {}),
            child: const Icon(Icons.settings)),
      ],
    );
  }
}
