import 'package:estetica_app/ui/util/colors.dart';
import 'package:estetica_app/ui/util/responsive.dart';
import 'package:flutter/material.dart';

class FloatMenu extends StatefulWidget {
  const FloatMenu({
    Key? key,
    required this.responsive,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final Responsive responsive;
  final TabController _tabController;

  @override
  State<FloatMenu> createState() => _FloatMenuState();
}

class _FloatMenuState extends State<FloatMenu> {
  @override
  void initState() {
    widget._tabController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: widget.responsive.wp(80),
        margin: const EdgeInsets.only(bottom: 30),
        child: TabBar(
          indicator: const BoxDecoration(shape: BoxShape.circle),
          controller: widget._tabController,
          indicatorColor: primaryColor,
          tabs: [
            Container(
              decoration: const BoxDecoration(shape: BoxShape.circle),
              child: Icon(Icons.home_outlined,
                  size: widget.responsive.dp(3),
                  color: widget._tabController.index == 0
                      ? primaryColor
                      : greyColor),
            ),
            Icon(Icons.calendar_month_outlined,
                size: widget.responsive.dp(3),
                color: widget._tabController.index == 1
                    ? primaryColor
                    : greyColor),
            Icon(Icons.leaderboard,
                size: widget.responsive.dp(3),
                color: widget._tabController.index == 2
                    ? primaryColor
                    : greyColor),
            Icon(Icons.person_outline,
                size: widget.responsive.dp(3),
                color: widget._tabController.index == 3
                    ? primaryColor
                    : greyColor),
          ],
        ));
  }
}
