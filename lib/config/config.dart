export 'request_config.dart';

class AppGlobalConfig {
  AppGlobalConfig._privateConstructor();
  static final AppGlobalConfig _instance = AppGlobalConfig._privateConstructor();
  static AppGlobalConfig get instance => _instance;

  // 修改此处 ip 地址
  final String ipAddress = '127.0.0.1';

  // http request
  late String serverAddress = 'http://$ipAddress:8888';

  // web socket
  late String wsServerAddress = 'ws://$ipAddress:8888';

  // AliOSS 地址
  String aliOSSAddress = 'http://file.artisancode.cn/';
}