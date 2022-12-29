import 'package:estetica_app/ui/pages/home/tabs/calendar_tab/calendar_tab.dart';
import 'package:estetica_app/ui/pages/home/tabs/home_tab/home_tab.dart';
import 'package:estetica_app/ui/pages/home/tabs/profile_tab/profile_tab.dart';
import 'package:estetica_app/ui/pages/home/tabs/services_tab/services_tab.dart';
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
      body: DefaultTabController(
        length: 4,
        child: TabBarView(
            children: [HomeTab(), CalendarTab(), ServicesTab(), ProfileTab()]),
      ),
    );
  }
}
