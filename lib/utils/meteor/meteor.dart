import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_storage/get_storage.dart';

import '/app/repositories/repositories.dart';
import '../event/debounce_throttle.dart';
import '../event/get_device.dart';
import '../widget/custom_animate.dart';
import '../widget/custom_prompt.dart';
import '../widget/custom_zoom.dart';

/// 工具类
class Meteor {
  // 饿汉式的单例模式，在类加载的时候，instance 静态实例已经创建并初始化好了
  Meteor._privateConstructor();
  static final Meteor _instance = Meteor._privateConstructor();
  static Meteor get instance => _instance;

  final DeviceInfo _deviceInfo = DeviceInfo.instance;
  final CustomAnimate _customAnimate = CustomAnimate.instance;
  final DebounceThrottle _debounceThrottle = DebounceThrottle.instance;

  /// 使用 get_storage
  GetStorage get getStorage => GetStorage();

  /// 诊断网络：检查设备是否在线，若不在线则提示用户并返回 false，否则为 true
  Future<bool> diagnosticNetwork() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult != ConnectivityResult.mobile && connectivityResult != ConnectivityResult.wifi) {
      popPrompt('请连接到网络');
      return false;
    }
    return true;
  }

  /// 关闭键盘
  Future<bool> closeKeyBroad() async {
    if (GetPlatform.isMobile) {
      SystemChannels.textInput.invokeMethod('TextInput.hide');
    }
    return true;
  }

  /// 防抖
  Future<void> debounce(fun)async=> await _debounceThrottle.debounce(fun, durationTime: 1000);

  /// 节流函数
  Future<void> throttle(fun)async=> await _debounceThrottle.throttle(fun, durationTime: 1000);

  /// 节流 SnackBar
  Future<void> popPrompt(msg)async=> await _debounceThrottle.popThrottle(()=> CustomPrompt().prompt(msg));

  /// 节流 zoomImage
  Future<void> zoomImage({required int imageType, required String imagePath}) async {
    await CustomZoom().zoomImage(imageType: imageType, imagePath: imagePath);
  }

  /// 加载自定义的等待动画
  Future<Widget?> loadingAnimate()async=> await _customAnimate.loadingAnimate();

  /// 获取设备信息
  Future<DeviceRepository> getDeviceInfo() => _deviceInfo.getInfo();
}
