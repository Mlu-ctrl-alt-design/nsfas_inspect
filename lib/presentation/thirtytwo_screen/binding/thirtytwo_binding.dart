import '../controller/thirtytwo_controller.dart';
import 'package:get/get.dart';

class ThirtytwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ThirtytwoController());
  }
}
