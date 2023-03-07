import 'package:get/get.dart';

import '/app/apis/apis.dart';
import '/app/handlers/handlers.dart';
// import '/app/services/services.dart';
import '/app/controllers/controllers.dart';

class MainBinding extends Bindings {
  @override
  dependencies() {
    Get.lazyPut<MainState>(() => MainState());
    // Get.lazyPut<LoginAction>(() => LoginAction());
    Get.lazyPut<MainController>(() => MainController());

    // Get.lazyPut<AuthApi>(() => AuthApi());
    // Get.lazyPut<AuthService>(() => AuthService());
    // Get.lazyPut<AMapLocationController>(() => AMapLocationController());
  }
}