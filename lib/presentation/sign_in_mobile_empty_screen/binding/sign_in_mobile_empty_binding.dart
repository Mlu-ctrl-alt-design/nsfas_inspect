import '../controller/sign_in_mobile_empty_controller.dart';
import 'package:get/get.dart';

class SignInMobileEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInMobileEmptyController());
  }
}
