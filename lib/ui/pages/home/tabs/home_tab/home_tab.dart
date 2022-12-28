import 'package:estetica_app/ui/widgets/appbar_item.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          AppBarItem(),
          Container(
            height: 200,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [],
            ),
          )
        ],
      ),
    );
  }
}
