import '/config/config.dart';

class AuthApi {
  late final ConnectRequest _connectRequest = ConnectRequest.instance;

  /// 登陆
  Future login({Map? params, required Map<String, dynamic> data, required bool popDialog}) =>
      _connectRequest.post("/api/auth/login",
        data: data,
        popDialog: popDialog,
      );
}

