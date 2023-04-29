import '../controller/screenloader_controller.dart';
import 'package:get/get.dart';

class ScreenloaderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ScreenloaderController());
  }
}
