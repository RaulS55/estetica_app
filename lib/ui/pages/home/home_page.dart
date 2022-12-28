import 'package:estetica_app/ui/pages/home/tabs/home_tab/home_tab.dart';
import 'package:estetica_app/ui/util/responsive.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Scaffold(
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Container(
        width: responsive.wp(80),
        margin: const EdgeInsets.only(bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.home_outlined),
            Icon(Icons.calendar_month_outlined),
            Icon(Icons.leaderboard),
            Icon(Icons.person_outline),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: responsive.hp(2), horizontal: responsive.wp(7)),
        child: DefaultTabController(
          length: 2,
          child: TabBarView(children: [
            HomeTab(),
            Container(color: Colors.pink, width: double.infinity),
          ]),
        ),
      ),
    );
  }
}
