import 'package:get/get.dart';

import '/app/apis/apis.dart';
import '/app/handlers/handlers.dart';
// import '/app/services/services.dart';
import '/app/controllers/controllers.dart';


class LoginBinding extends Bindings {
  @override
  dependencies() {
    Get.lazyPut<LoginState>(() => LoginState());
    Get.lazyPut<LoginAction>(() => LoginAction());
    Get.lazyPut<LoginController>(() => LoginController());

    Get.lazyPut<AuthApi>(() => AuthApi());
    // Get.lazyPut<AuthService>(() => AuthService());
    // Get.lazyPut<AMapLocationController>(() => AMapLocationController());
  }
}