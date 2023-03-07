import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../event/back_prevent.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({Key? key,
    this.appbarWidget,
    required this.bodyWidget,
    required this.tabBarWidget
  }) : super(key: key);

  final dynamic appbarWidget, bodyWidget, tabBarWidget;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget,
      body: SafeArea(
        top: false, bottom: false,
        left: false, right: false,
        child: GetPlatform.isDesktop
            ? bodyWidget
            : WillPopScope(
              onWillPop: () => AndroidBackDesktop.instance.backToDesktop(), //返回桌面事件监听
              child: bodyWidget,
            ),
      ),
      bottomNavigationBar: tabBarWidget,
      resizeToAvoidBottomInset: false, //使用键盘避免底部弹起
    );
  }
}