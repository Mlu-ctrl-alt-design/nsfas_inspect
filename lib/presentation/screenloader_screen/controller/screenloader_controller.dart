import 'package:nsfas_inspect/core/app_export.dart';
import 'package:nsfas_inspect/presentation/screenloader_screen/models/screenloader_model.dart';
import 'package:nsfas_inspect/widgets/custom_bottom_bar.dart';

class ScreenloaderController extends GetxController {
  Rx<ScreenloaderModel> screenloaderModelObj = ScreenloaderModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
