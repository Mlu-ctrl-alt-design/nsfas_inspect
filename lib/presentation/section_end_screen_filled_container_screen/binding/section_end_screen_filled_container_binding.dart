import '../controller/section_end_screen_filled_container_controller.dart';
import 'package:get/get.dart';

class SectionEndScreenFilledContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SectionEndScreenFilledContainerController());
  }
}
