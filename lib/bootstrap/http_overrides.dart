import 'dart:io';

/// 加载 HTTP Certificate Override Config
class HttpCertificate {
  void initialize() async {
    HttpOverrides.global = HttpOverride();
  }
}

//初始化https证书验证配置
class HttpOverride extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)..badCertificateCallback =
        (X509Certificate cert, String host, int port) => true;
  }
}