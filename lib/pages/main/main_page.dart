import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom_body.dart';
import '/utils/utils.dart';

class MainPage extends GetView {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      appbarWidget: CustomAppBar(
        title: '控制台',
        leftWidget: null,
        rightWidget: null,
        bgcolorEnable: true,
      ),
      bodyWidget: CustomBody(),
      tabBarWidget: CustomTail(tailWidget: null),
    );
  }
}
