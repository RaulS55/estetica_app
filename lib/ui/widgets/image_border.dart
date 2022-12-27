import 'package:estetica_app/ui/util/colors.dart';
import 'package:estetica_app/ui/util/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'dart:ui' as ui show Image;
import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart' show rootBundle;
import 'package:path_provider/path_provider.dart';

class MyCustomPainter extends StatelessWidget {
  const MyCustomPainter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return SizedBox(
      height: responsive.height,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderCurvo(),
      ),
    );
  }
}

class _HeaderCurvo extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) async {
    final Paint lapiz = Paint();
    lapiz.color = primaryColor;
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 5;

    final path = Path();
    path.moveTo(0, size.height * 0.4);
    path.lineTo(0, size.height * 0.4);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height * 0.3);
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.5, 0, size.height * 0.4);

    /*path.lineTo(0, size.height * 0.40);
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.55, size.width, size.height * 0.40);
    path.lineTo(size.width, size.height * 0.40);
    path.lineTo(size.width, 0);*/

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
