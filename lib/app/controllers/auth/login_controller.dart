import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '/routes/routes.dart';
import '/config/config.dart';
import '/utils/utils.dart';
import '/app/apis/apis.dart';
import '/app/handlers/handlers.dart';
import '/app/repositories/repositories.dart';

class LoginController extends GetxController {
  /// 单例加载
  late final Meteor meteor = Meteor.instance;
  late final AppGlobalConfig appGlobalConfig = AppGlobalConfig.instance;

  /// 懒加载依赖注入
  late final AuthApi authApi = Get.find<AuthApi>();
  late LoginState loginState = Get.find<LoginState>();
  late LoginAction loginAction = Get.find<LoginAction>();

  /// 登陆请求
  Future<void> loginRequest() async {
    // 发起登陆请求
    authApi.login(data: loginState.loginRequestRepository.toJson(), popDialog: false).then((value) async {
      loginState.loginResponseRepository = LoginResponseRepository.fromJson(value);
      meteor.popPrompt(loginState.loginResponseRepository.msg.toString());
      debugPrint('token is: ${loginState.loginResponseRepository.msg.toString()}');

      if (loginState.loginResponseRepository.status != 1) return;

      await Get.toNamed(Routes.main,);
    }).catchError((e){
      meteor.popPrompt(e.toString());
    });
  }

  @override
  void onInit() {
    debugPrint("dd");

    loginState.accountController = TextEditingController();
    loginState.passwordController = TextEditingController();

    super.onInit();
  }
}