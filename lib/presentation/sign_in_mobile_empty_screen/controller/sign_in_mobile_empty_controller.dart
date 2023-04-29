import 'package:nsfas_inspect/core/app_export.dart';
import 'package:nsfas_inspect/presentation/sign_in_mobile_empty_screen/models/sign_in_mobile_empty_model.dart';
import 'package:flutter/material.dart';

class SignInMobileEmptyController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<SignInMobileEmptyModel> signInMobileEmptyModelObj =
      SignInMobileEmptyModel().obs;

  Rx<bool> isCheckbox = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }
}
