import 'package:nsfas_inspect/core/app_export.dart';
import 'package:nsfas_inspect/presentation/inspection_end_screen/models/inspection_end_model.dart';
import 'package:nsfas_inspect/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class InspectionEndController extends GetxController {
  TextEditingController mobilelistitemController = TextEditingController();

  Rx<InspectionEndModel> inspectionEndModelObj = InspectionEndModel().obs;

  Rx<bool> isCheckbox = false.obs;

  Rx<bool> isCheckbox1 = false.obs;

  Rx<bool> isCheckbox2 = false.obs;

  Rx<bool> isCheckbox3 = false.obs;

  Rx<bool> isCheckbox4 = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    mobilelistitemController.dispose();
  }
}
