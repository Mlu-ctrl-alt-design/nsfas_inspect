import '../controller/inspection_end_controller.dart';
import 'package:get/get.dart';

class InspectionEndBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InspectionEndController());
  }
}
