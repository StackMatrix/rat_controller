import 'package:get/get.dart';
import 'package:flutter/material.dart';
// import 'package:desktop_window/desktop_window.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:bitsdojo_window_platform_interface/window.dart';

import '/routes/routes.dart';
import '/config/config.dart';
import '/utils/utils.dart';
import '/app/apis/apis.dart';
import '/app/handlers/handlers.dart';
import '/app/repositories/repositories.dart';

class MainController extends GetxController {
  /// 单例加载
  late final Meteor meteor = Meteor.instance;
  late final AppGlobalConfig appGlobalConfig = AppGlobalConfig.instance;

  /// 懒加载依赖注入
  late MainState mainState = Get.find<MainState>();

  @override
  void onReady() {
    debugPrint("onReady window");

    super.onReady();
  }

  @override
  void onInit() {

    if (GetPlatform.isDesktop) {
      debugPrint("dd");
      doWhenWindowReady(() {
        late DesktopWindow win = appWindow;
        const initialSize = Size(850, 620);

        win.minSize = initialSize;
        win.maxSize = initialSize;
        win.size = initialSize;

        win.alignment = Alignment.topLeft;
        win.title = "rat_controller";
        win.show();
      });
    }
    super.onInit();
  }
}