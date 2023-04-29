import 'controller/sign_in_mobile_empty_controller.dart';
import 'package:flutter/material.dart';
import 'package:nsfas_inspect/core/app_export.dart';
import 'package:nsfas_inspect/core/utils/validation_functions.dart';
import 'package:nsfas_inspect/widgets/custom_button.dart';
import 'package:nsfas_inspect/widgets/custom_checkbox.dart';
import 'package:nsfas_inspect/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignInMobileEmptyScreen extends GetWidget<SignInMobileEmptyController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.indigo50,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              child: SingleChildScrollView(
                                  padding: getPadding(top: 148),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgImage5,
                                            height: getVerticalSize(67),
                                            width: getHorizontalSize(106)),
                                        Padding(
                                            padding: getPadding(top: 27),
                                            child: Text("lbl_inspector_app".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtGolosTextBold30)),
                                        Container(
                                            width: double.maxFinite,
                                            child: Container(
                                                margin: getMargin(top: 317),
                                                padding: getPadding(
                                                    left: 24,
                                                    top: 48,
                                                    right: 24,
                                                    bottom: 48),
                                                decoration: AppDecoration
                                                    .fillWhiteA700
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .customBorderTL16),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 4),
                                                          child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                    "lbl_email_address"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular10),
                                                                CustomTextFormField(
                                                                    focusNode:
                                                                        FocusNode(),
                                                                    controller:
                                                                        controller
                                                                            .emailController,
                                                                    hintText:
                                                                        "msg_yourmail_mail_com"
                                                                            .tr,
                                                                    margin: getMargin(
                                                                        top: 5),
                                                                    variant: TextFormFieldVariant
                                                                        .OutlineYellow900,
                                                                    shape: TextFormFieldShape
                                                                        .RoundedBorder4,
                                                                    padding: TextFormFieldPadding
                                                                        .PaddingT9,
                                                                    fontStyle:
                                                                        TextFormFieldFontStyle
                                                                            .RobotoRegular14,
                                                                    textInputType:
                                                                        TextInputType
                                                                            .emailAddress,
                                                                    validator:
                                                                        (value) {
                                                                      if (value ==
                                                                              null ||
                                                                          (!isValidEmail(
                                                                              value,
                                                                              isRequired: true))) {
                                                                        return "Please enter valid email";
                                                                      }
                                                                      return null;
                                                                    })
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 20),
                                                          child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                    "lbl_password"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular10),
                                                                CustomTextFormField(
                                                                    focusNode:
                                                                        FocusNode(),
                                                                    controller:
                                                                        controller
                                                                            .passwordController,
                                                                    hintText:
                                                                        "lbl2"
                                                                            .tr,
                                                                    margin:
                                                                        getMargin(
                                                                            top:
                                                                                5),
                                                                    variant:
                                                                        TextFormFieldVariant
                                                                            .OutlineYellow900,
                                                                    shape: TextFormFieldShape
                                                                        .RoundedBorder4,
                                                                    padding:
                                                                        TextFormFieldPadding
                                                                            .PaddingT9,
                                                                    fontStyle:
                                                                        TextFormFieldFontStyle
                                                                            .RobotoRegular14,
                                                                    textInputAction:
                                                                        TextInputAction
                                                                            .done)
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 16),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Obx(() =>
                                                                    CustomCheckbox(
                                                                        text: "lbl_remember_me"
                                                                            .tr,
                                                                        iconSize:
                                                                            getHorizontalSize(
                                                                                20),
                                                                        value: controller
                                                                            .isCheckbox
                                                                            .value,
                                                                        fontStyle:
                                                                            CheckboxFontStyle
                                                                                .RobotoRegular14,
                                                                        onChange:
                                                                            (value) {
                                                                          controller
                                                                              .isCheckbox
                                                                              .value = value;
                                                                        })),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                2),
                                                                    child: Text(
                                                                        "lbl_forgot_password"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRobotoRegular14))
                                                              ])),
                                                      CustomButton(
                                                          height:
                                                              getVerticalSize(
                                                                  48),
                                                          text: "lbl_login".tr,
                                                          margin: getMargin(
                                                              top: 16),
                                                          variant: ButtonVariant
                                                              .FillYellow900,
                                                          padding: ButtonPadding
                                                              .PaddingAll14,
                                                          fontStyle: ButtonFontStyle
                                                              .GolosTextSemiBold16,
                                                          onTap: () {
                                                            onTapLogin();
                                                          })
                                                    ])))
                                      ])))
                        ])))));
  }

  onTapLogin() {
    Get.toNamed(
      AppRoutes.twelveScreen,
    );
  }
}
