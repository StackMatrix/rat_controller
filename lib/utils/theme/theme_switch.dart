import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'theme.dart';
import '../meteor/meteor.dart';

class ThemeSwitch {
  // 加载必须的资源
  late final Meteor _meteor = Meteor.instance;
  
  //获取默认主题，判断主题模式
  bool loadTheme() => loadCurrentTheme();
  ThemeMode get theme => loadTheme() ? ThemeMode.light : ThemeMode.dark;

  //读取存储的 themeMode 并根据值切换主题
  bool loadCurrentTheme() {
    if (_meteor.getStorage.read('themeMode') != false) switchColor(_meteor.getStorage.read('themeColor'));
    return _meteor.getStorage.read('themeMode') ?? true;
  }

  //保存当前主题值到 themeMode
  Future<void> saveTheme(isMode) async => await _meteor.getStorage.write('themeMode', isMode);

  //根据值切换主题类型并将值写入 themeColor
  Future<void> switchTheme(value) async {
    //判断值，切换主题模式
    if (value == 'black') {
      Get.changeThemeMode(ThemeMode.dark);
      await saveTheme(false);
    } else {
      Get.changeThemeMode(ThemeMode.light);
      await saveTheme(true);
    }

    //切换颜色
    switchColor(value);

    //调用 GetStorage 存储 themeColor
    await _meteor.getStorage.write('themeColor', value);
  }

  // 切换颜色
  void switchColor(value) {
    switch (value) {
      case 'red': Get.changeTheme(ApplicationTheme.red);
      break;
      case 'orange': Get.changeTheme(ApplicationTheme.orange);
      break;
      case 'yellow': Get.changeTheme(ApplicationTheme.yellow);
      break;
      case 'green': Get.changeTheme(ApplicationTheme.green);
      break;
      case 'blue': Get.changeTheme(ApplicationTheme.blue);
      break;
      case 'indigo': Get.changeTheme(ApplicationTheme.indigo);
      break;
      case 'purple': Get.changeTheme(ApplicationTheme.purple);
      break;
      case 'black': Get.changeTheme(ApplicationTheme.black);
      break;
    }
  }
}