import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:bitsdojo_window_platform_interface/window.dart';

import 'get_storage.dart';
import 'ui_overlay.dart';
import 'http_overrides.dart';
import 'run_app.dart';

class Application {

  /// 初始化
  Future<void> initialize() async{
    //确保 Widgets 初始化
    WidgetsFlutterBinding.ensureInitialized();
    //初始化 https 证书
    HttpCertificate().initialize();
    //初始化 UI 状态栏
    UIOverlayStyle().initialize();
    //初始化 GetStorage
    await LoadStorage().initialize();

    if (GetPlatform.isDesktop) {
      //初始化桌面版应用的窗体大小
      // await SetWindow().initialize();

      // 若非移动端则使用无边框模式
      doWhenWindowReady(() {
        late DesktopWindow win = appWindow;
        const initialSize = Size(414, 400);

        win.minSize = initialSize;
        win.maxSize = initialSize;
        win.size = initialSize;

        win.alignment = Alignment.center;
        win.title = "rat_controller";
        win.show();
      });
    }
  }

  /// 运行 App 以及使用 runZonedGuarded 方法捕捉错误
  void get myApp => runZonedGuarded<void>(
    () async {
      await initialize();

      runApp(const RunApp());
    },
    (err, stack) => debugPrint("主程序异常：$err, $stack"),
  );
}