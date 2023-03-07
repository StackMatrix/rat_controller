import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

//返回事件监听
class AndroidBackDesktop {
  // 创建 AndroidBackDesktop 单例，全局只有一个对象
  AndroidBackDesktop._privateConstructor();
  static final AndroidBackDesktop _instance = AndroidBackDesktop._privateConstructor();
  static AndroidBackDesktop get instance {return _instance;}

  static const String _backChannelEvent = "android/back/desktop";
  static const String _eventBackDesktop = "backDesktop";

  Future<bool> backToDesktop() async {
    if (!Platform.isAndroid) {
      return false;
    }
    const platform = MethodChannel(_backChannelEvent);

    if (Get.currentRoute == '/auth/login' && Get.currentRoute == '/auth/register' && Get.currentRoute == '/auth/retrieve' && Get.currentRoute == '/main') {
      debugPrint('backToDesktop 事件: ${Get.currentRoute}');
      try {
        await platform.invokeMethod(_eventBackDesktop);
      } on PlatformException catch (e) {
        debugPrint(e.toString());
      }
      return Future.value(false);
    }

    Get.back();
    return Future.value(false);
  }
}