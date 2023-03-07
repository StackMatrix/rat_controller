import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:android_id/android_id.dart';

import '/app/repositories/repositories.dart';

///  获取设备的指定信息
class DeviceInfo {
  DeviceInfo._privateConstructor();
  static final DeviceInfo _instance = DeviceInfo._privateConstructor();
  static DeviceInfo get instance => _instance;

  Future<DeviceRepository> getInfo() async {
    final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
    late dynamic systemInfo;
    DeviceRepository data;

    if (Platform.isAndroid) {
      systemInfo = await deviceInfoPlugin.androidInfo;
      // device_info_plus已取消获取 androidId 该方法，单独添加 android_id 包获取id
      const androidIdPlugin = AndroidId();
      String? androidID = await androidIdPlugin.getId();

      data = DeviceRepository(
        deviceImei: androidID.toString(),
        deviceName: "Android",
        deviceModel: systemInfo.brand + ' ' + systemInfo.model,
      );
    }
    else if (Platform.isIOS) {
      systemInfo = await deviceInfoPlugin.iosInfo;

      data = DeviceRepository(
        deviceImei: systemInfo.identifierForVendor,
        deviceName: "IOS",
        deviceModel: systemInfo.name,
      );
    }
    else if (Platform.isWindows){
      systemInfo = await deviceInfoPlugin.windowsInfo;

      data = DeviceRepository(
        deviceImei: systemInfo.numberOfCores,
        deviceName: "Windows",
        deviceModel: systemInfo.systemMemoryInMegabytes,
      );
    }
    else if (Platform.isMacOS) {
      systemInfo = await deviceInfoPlugin.macOsInfo;

      data = DeviceRepository(
        deviceImei: systemInfo.systemGUID,
        deviceName: "MacOS",
        deviceModel: systemInfo.model,
      );
    }
    else if (Platform.isLinux) {
      systemInfo = await deviceInfoPlugin.linuxInfo;

      data = DeviceRepository(
        deviceImei: systemInfo.machineId,
        deviceName: "Linux",
        deviceModel: systemInfo.prettyName,
      );
    }
    else {
      data = DeviceRepository(
        deviceImei: "",
        deviceName: Platform.localeName,
        deviceModel: "",
      );
    }

    return data;
  }
}