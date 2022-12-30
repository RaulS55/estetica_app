import 'package:cached_network_image/cached_network_image.dart';
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
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        children: const [
          _ServiceItem("Queratina",
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGiOgyPm2ynEiDzl5vLnJfNzARd5jFPnVaJQ&usqp=CAU"),
          _ServiceItem("Botox",
              "https://altiorem.com/wp-content/uploads/Botox-o-Acido-Hialuronico-1-1076x538.jpg"),
          _ServiceItem("Laser",
              "https://www.clinicapremiumestetica.com/wp-content/uploads/2021/11/Unidad-laser-medio-Marbella.jpg"),
          _ServiceItem("Pestañas",
              "https://img.huffingtonpost.com/asset/5dd57591210000837134d8a7.jpeg?ops=scalefit_720_noupscale"),
        ],
      ),
    );
  }
}

class _ServiceItem extends StatelessWidget {
  const _ServiceItem(this.text, this.image, {Key? key}) : super(key: key);
  final String text;
  final String image;

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
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: greyligthColor,
                image: DecorationImage(
                    image: CachedNetworkImageProvider(image),
                    fit: BoxFit.cover)),
          ),
          const SizedBox(height: 3),
          Text(
            text,
            style: TextStyle(fontSize: 22),
          )
        ],
      ),
    );
  }
}
