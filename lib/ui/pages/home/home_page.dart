import 'package:estetica_app/ui/pages/home/tabs/calendar_tab/calendar_tab.dart';
import 'package:estetica_app/ui/pages/home/tabs/home_tab/home_tab.dart';
import 'package:estetica_app/ui/pages/home/tabs/profile_tab/profile_tab.dart';
import 'package:estetica_app/ui/pages/home/tabs/services_tab/services_tab.dart';
import 'package:estetica_app/ui/pages/home/widgets/float_menu.dart';
import 'package:estetica_app/ui/util/responsive.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Scaffold(
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton:
          FloatMenu(responsive: responsive, tabController: _tabController),
      body: TabBarView(
          physics: const BouncingScrollPhysics(),
          controller: _tabController,
          children: [HomeTab(), CalendarTab(), ServicesTab(), ProfileTab()]),
    );
  }
}
