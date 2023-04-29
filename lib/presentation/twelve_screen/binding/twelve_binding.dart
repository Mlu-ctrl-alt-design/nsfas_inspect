import '../controller/twelve_controller.dart';
import 'package:get/get.dart';

class TwelveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TwelveController());
  }
}
