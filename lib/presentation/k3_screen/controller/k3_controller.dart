import 'package:nsfas_inspect/core/app_export.dart';
import 'package:nsfas_inspect/presentation/k3_screen/models/k3_model.dart';
import 'package:nsfas_inspect/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class K3Controller extends GetxController {
  TextEditingController roomsizeController = TextEditingController();

  TextEditingController roomsizeoneController = TextEditingController();

  TextEditingController roomsizetwoController = TextEditingController();

  TextEditingController roomsizethreeController = TextEditingController();

  Rx<K3Model> k3ModelObj = K3Model().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    roomsizeController.dispose();
    roomsizeoneController.dispose();
    roomsizetwoController.dispose();
    roomsizethreeController.dispose();
  }
}
