import 'package:estetica_app/ui/util/colors.dart';
import 'package:flutter/material.dart';

class CustomLoading extends StatefulWidget {
  const CustomLoading({Key? key}) : super(key: key);

  @override
  _MyCustomWidgetState createState() => _MyCustomWidgetState();
}

class _MyCustomWidgetState extends State<CustomLoading>
    with TickerProviderStateMixin {
  late AnimationController controller1;
  late Animation<double> animation1;

  late AnimationController controller2;
  late Animation<double> animation2;

  @override
  void initState() {
    super.initState();

    controller1 = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    animation1 = Tween<double>(begin: .0, end: .5)
        .animate(CurvedAnimation(parent: controller1, curve: Curves.easeInOut))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller1.reverse();
          controller2.forward();
        } else if (status == AnimationStatus.dismissed) {
          controller1.forward();
        }
      });

    controller2 = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    animation2 = Tween<double>(begin: .0, end: .5)
        .animate(CurvedAnimation(parent: controller2, curve: Curves.easeInOut))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller2.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller2.forward();
        }
      });

    controller1.forward();
  }

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black26,
      child: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white24,
        child: Center(
          child: SizedBox(
            height: 70,
            width: 70,
            child: CustomPaint(
              painter: DotsPainter(animation1.value, animation2.value),
            ),
          ),
        ),
      ),
    );
  }
}

class DotsPainter extends CustomPainter {
  final double radius_1;
  final double radius_2;

  DotsPainter(this.radius_1, this.radius_2);

  @override
  void paint(Canvas canvas, Size size) {
    Paint circle_1 = Paint()..color = const Color(0xffffffff);

    Paint circle_2 = Paint()..color = primaryColor;

    canvas.drawCircle(Offset(size.width * .5, size.height * .5),
        size.width * radius_1, circle_1);

    canvas.drawCircle(Offset(size.width * .5, size.height * .5),
        size.width * radius_2, circle_2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
