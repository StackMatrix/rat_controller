import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoadStorage extends GetxService {
  /// 加载 GetStorage
  Future<void> initialize() async {
    await GetStorage.init();
  }
}