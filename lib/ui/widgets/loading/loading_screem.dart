import 'package:estetica_app/ui/widgets/loading/custom_loading.dart';
import 'package:estetica_app/ui/widgets/loading/custom_loading_controller.dart';
import 'package:flutter/material.dart';

class LoadingScreem extends StatelessWidget {
  const LoadingScreem({
    Key? key,
    this.blockReturn = true,
  }) : super(key: key);
  final bool blockReturn;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => blockReturn ? false : true,
      child: ValueListenableBuilder(
          valueListenable: LoadingWidgetController.instance.loadingNotifier,
          builder: (context, bool value, Widget? child) {
            return value ? const CustomLoading() : const SizedBox();
          }),
    );
  }
}
