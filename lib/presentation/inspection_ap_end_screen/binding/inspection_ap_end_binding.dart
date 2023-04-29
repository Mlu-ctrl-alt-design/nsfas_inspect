import '../controller/inspection_ap_end_controller.dart';
import 'package:get/get.dart';

class InspectionApEndBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InspectionApEndController());
  }
}
