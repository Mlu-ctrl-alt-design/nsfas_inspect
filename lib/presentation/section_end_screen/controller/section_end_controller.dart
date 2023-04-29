import 'package:nsfas_inspect/core/app_export.dart';
import 'package:nsfas_inspect/presentation/section_end_screen/models/section_end_model.dart';
import 'package:nsfas_inspect/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class SectionEndController extends GetxController {
  TextEditingController placeholderController = TextEditingController();

  Rx<SectionEndModel> sectionEndModelObj = SectionEndModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    placeholderController.dispose();
  }
}
