import 'package:nsfas_inspect/core/app_export.dart';
import 'package:nsfas_inspect/presentation/section_end_screen_filled_container_screen/models/section_end_screen_filled_container_model.dart';
import 'package:nsfas_inspect/widgets/custom_bottom_bar.dart';

class SectionEndScreenFilledContainerController extends GetxController {
  Rx<SectionEndScreenFilledContainerModel>
      sectionEndScreenFilledContainerModelObj =
      SectionEndScreenFilledContainerModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.signInMobileEmptyScreen,
      );
    });
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onInit() {}
}
