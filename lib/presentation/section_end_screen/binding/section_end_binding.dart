import '../controller/section_end_controller.dart';
import 'package:get/get.dart';

class SectionEndBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SectionEndController());
  }
}
