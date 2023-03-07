import 'dart:io';

import 'package:get/get.dart';

import '/config/config.dart';
import '/utils/utils.dart';
import '/app/controllers/controllers.dart';
import '/app/handlers/handlers.dart';
import '/app/repositories/repositories.dart';

class LoginAction extends GetMicrotask {
  /// 单例加载
  late final Meteor meteor = Meteor.instance;
  late final Validator validator = Validator.instance;
  late final AppGlobalConfig appGlobalConfig = AppGlobalConfig.instance;

  /// 懒加载依赖注入
  late final LoginState loginState = Get.find<LoginState>();
  late final LoginController loginController = Get.find<LoginController>();

  /// 连接到服务器
  void loginButtonOnClick() async {
    // 获取设备信息
    final getDeviceInfo = await meteor.getDeviceInfo();

    loginState.loginRequestRepository = LoginRequestRepository(
        account: loginState.accountController.text,
        password: loginState.passwordController.text,
        operationType: 1,
        device: DeviceRepository(
          deviceImei: getDeviceInfo.deviceImei,
          deviceName: getDeviceInfo.deviceName,
          deviceModel: getDeviceInfo.deviceModel,
          devicePlatform: Platform.operatingSystem,
          deviceLocation: "",
          deviceLat: "",
          deviceLon: "",
        ),
    );

    // 发起请求
    meteor.throttle(loginController.loginRequest());
  }

  /// 切换密码显示状态，然后更新相应的视图
  void passwordObscure() {
    loginState.passwordObscure = loginState.passwordObscure ? false : true;

    loginController.update(["passwordWidget"]);
  }
}