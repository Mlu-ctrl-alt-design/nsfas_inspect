import '../controller/thirtythree_controller.dart';
import 'package:get/get.dart';

class ThirtythreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ThirtythreeController());
  }
}
