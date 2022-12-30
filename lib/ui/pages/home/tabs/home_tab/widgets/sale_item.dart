import 'package:cached_network_image/cached_network_image.dart';
import 'package:estetica_app/ui/util/colors.dart';
import 'package:estetica_app/ui/util/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SaleItem extends StatelessWidget {
  const SaleItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Container(
      height: responsive.hp(18),
      decoration: BoxDecoration(
          color: greyligthColor, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: greyligthColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  image: DecorationImage(
                      image: CachedNetworkImageProvider(
                          "https://myspapura.com/wp-content/uploads/2019/01/195530.jpg"),
                      fit: BoxFit.cover)),
            ),
          ),
          Container(
            width: responsive.wp(40),
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: responsive.hp(1)),
                Text(
                  "50% OFF",
                  style: TextStyle(
                      color: whiteColor,
                      fontSize: responsive.dp(3),
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "Voucher for all facial treatments",
                  style: TextStyle(
                      color: whiteColor.withOpacity(0.9),
                      fontSize: responsive.dp(1.8),
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: responsive.hp(2)),
                CupertinoButton(
                    minSize: 0,
                    padding: EdgeInsets.symmetric(
                        vertical: 8, horizontal: responsive.wp(7)),
                    color: blackColor,
                    borderRadius: BorderRadius.circular(100),
                    child: const Text("Más"),
                    onPressed: () {})
              ],
            ),
          )
        ],
      ),
    );
  }
}
