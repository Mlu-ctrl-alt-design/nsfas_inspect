import 'controller/inspection_end_controller.dart';
import 'package:flutter/material.dart';
import 'package:nsfas_inspect/core/app_export.dart';
import 'package:nsfas_inspect/presentation/fourhundredseven_page/fourhundredseven_page.dart';
import 'package:nsfas_inspect/presentation/section_end_screen_filled_page/section_end_screen_filled_page.dart';
import 'package:nsfas_inspect/widgets/app_bar/appbar_image.dart';
import 'package:nsfas_inspect/widgets/app_bar/appbar_subtitle.dart';
import 'package:nsfas_inspect/widgets/app_bar/appbar_title.dart';
import 'package:nsfas_inspect/widgets/app_bar/custom_app_bar.dart';
import 'package:nsfas_inspect/widgets/custom_bottom_bar.dart';
import 'package:nsfas_inspect/widgets/custom_button.dart';
import 'package:nsfas_inspect/widgets/custom_checkbox.dart';
import 'package:nsfas_inspect/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class InspectionEndScreen extends GetWidget<InspectionEndController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.gray50,
        appBar: CustomAppBar(
          height: getVerticalSize(
            74,
          ),
          leadingWidth: 82,
          leading: AppbarImage(
            height: getVerticalSize(
              42,
            ),
            width: getHorizontalSize(
              66,
            ),
            imagePath: ImageConstant.imgImage5,
            margin: getMargin(
              left: 16,
              top: 16,
              bottom: 16,
            ),
          ),
          title: AppbarTitle(
            text: "lbl_nsfas_housing".tr,
            margin: getMargin(
              left: 75,
            ),
          ),
          actions: [
            AppbarSubtitle(
              text: "lbl_kr".tr,
              margin: getMargin(
                left: 16,
                top: 26,
                right: 16,
                bottom: 16,
              ),
            ),
          ],
          styleType: Style.bgFillWhiteA700,
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 92,
            ),
            child: Padding(
              padding: getPadding(
                left: 16,
                right: 16,
                bottom: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "lbl_section_name".tr.toUpperCase(),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtGolosTextSemiBold14Bluegray300,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 11,
                    ),
                    child: Text(
                      "lbl_document_upload".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtGolosTextSemiBold24,
                    ),
                  ),
                  CustomTextFormField(
                    focusNode: FocusNode(),
                    controller: controller.mobilelistitemController,
                    hintText: "lbl_floor_plan".tr,
                    margin: getMargin(
                      top: 48,
                    ),
                    variant: TextFormFieldVariant.FillWhiteA700,
                    padding: TextFormFieldPadding.PaddingT14,
                    fontStyle:
                        TextFormFieldFontStyle.GolosTextRegular16Gray90001,
                    textInputAction: TextInputAction.done,
                    prefix: Container(
                      padding: getPadding(
                        left: 4,
                        top: 5,
                        right: 4,
                        bottom: 5,
                      ),
                      margin: getMargin(
                        left: 16,
                        top: 14,
                        right: 8,
                        bottom: 14,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.yellow900,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            6,
                          ),
                        ),
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgCheckmark,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: getVerticalSize(
                        48,
                      ),
                    ),
                    suffix: Container(
                      margin: getMargin(
                        left: 30,
                        top: 12,
                        right: 16,
                        bottom: 12,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgIconOutlineChevronright,
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      maxHeight: getVerticalSize(
                        48,
                      ),
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      top: 4,
                    ),
                    padding: getPadding(
                      left: 16,
                      top: 12,
                      right: 16,
                      bottom: 12,
                    ),
                    decoration: AppDecoration.fillWhiteA700,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(
                          () => CustomCheckbox(
                            text: "msg_municipal_approval".tr,
                            iconSize: getHorizontalSize(
                              20,
                            ),
                            value: controller.isCheckbox.value,
                            margin: getMargin(
                              top: 2,
                            ),
                            fontStyle: CheckboxFontStyle.GolosTextRegular16,
                            onChange: (value) {
                              controller.isCheckbox.value = value;
                            },
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgIconOutlineChevronright,
                          height: getSize(
                            24,
                          ),
                          width: getSize(
                            24,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      top: 4,
                    ),
                    padding: getPadding(
                      left: 16,
                      top: 12,
                      right: 16,
                      bottom: 12,
                    ),
                    decoration: AppDecoration.fillWhiteA700,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(
                          () => CustomCheckbox(
                            text: "msg_director_s_id_document".tr,
                            value: controller.isCheckbox1.value,
                            margin: getMargin(
                              top: 2,
                              bottom: 1,
                            ),
                            fontStyle: CheckboxFontStyle.GolosTextRegular16,
                            onChange: (value) {
                              controller.isCheckbox1.value = value;
                            },
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgIconOutlineChevronright,
                          height: getSize(
                            24,
                          ),
                          width: getSize(
                            24,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      top: 4,
                    ),
                    padding: getPadding(
                      left: 16,
                      top: 12,
                      right: 16,
                      bottom: 12,
                    ),
                    decoration: AppDecoration.fillWhiteA700,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(
                          () => CustomCheckbox(
                            text: "lbl_cipc_documents".tr,
                            value: controller.isCheckbox2.value,
                            margin: getMargin(
                              top: 2,
                              bottom: 1,
                            ),
                            fontStyle: CheckboxFontStyle.GolosTextRegular16,
                            onChange: (value) {
                              controller.isCheckbox2.value = value;
                            },
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgIconOutlineChevronright,
                          height: getSize(
                            24,
                          ),
                          width: getSize(
                            24,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      top: 4,
                    ),
                    padding: getPadding(
                      left: 16,
                      top: 12,
                      right: 16,
                      bottom: 12,
                    ),
                    decoration: AppDecoration.fillWhiteA700,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(
                          () => CustomCheckbox(
                            text: "msg_proof_of_banking".tr,
                            value: controller.isCheckbox3.value,
                            margin: getMargin(
                              top: 2,
                            ),
                            fontStyle: CheckboxFontStyle.GolosTextRegular16,
                            onChange: (value) {
                              controller.isCheckbox3.value = value;
                            },
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgIconOutlineChevronright,
                          height: getSize(
                            24,
                          ),
                          width: getSize(
                            24,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      top: 4,
                    ),
                    padding: getPadding(
                      left: 16,
                      top: 12,
                      right: 16,
                      bottom: 12,
                    ),
                    decoration: AppDecoration.fillWhiteA700,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(
                          () => CustomCheckbox(
                            text: "lbl_tax_clearance".tr,
                            iconSize: getHorizontalSize(
                              20,
                            ),
                            value: controller.isCheckbox4.value,
                            margin: getMargin(
                              top: 2,
                              bottom: 1,
                            ),
                            fontStyle: CheckboxFontStyle.GolosTextRegular16,
                            onChange: (value) {
                              controller.isCheckbox4.value = value;
                            },
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgIconOutlineChevronright,
                          height: getSize(
                            24,
                          ),
                          width: getSize(
                            24,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 24,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: double.maxFinite,
                          child: Container(
                            width: getHorizontalSize(
                              382,
                            ),
                            padding: getPadding(
                              all: 4,
                            ),
                            decoration:
                                AppDecoration.outlineBluegray300.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: getHorizontalSize(
                                    71,
                                  ),
                                  margin: getMargin(
                                    left: 5,
                                    top: 4,
                                  ),
                                  child: Text(
                                    "lbl_overall_comment".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular16,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    height: getSize(
                                      5,
                                    ),
                                    width: getSize(
                                      5,
                                    ),
                                    margin: getMargin(
                                      top: 38,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                            child: Divider(
                                              height: getVerticalSize(
                                                5,
                                              ),
                                              thickness: getVerticalSize(
                                                5,
                                              ),
                                              color: ColorConstant.blueGray500,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: SizedBox(
                                            child: Divider(
                                              height: getVerticalSize(
                                                2,
                                              ),
                                              thickness: getVerticalSize(
                                                2,
                                              ),
                                              color: ColorConstant.blueGray500,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 4,
                          ),
                          child: Text(
                            "lbl_0_100".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtGolosTextRegular12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomButton(
                    height: getVerticalSize(
                      44,
                    ),
                    text: "lbl_next_section".tr,
                    margin: getMargin(
                      top: 46,
                    ),
                    suffixWidget: Container(
                      margin: getMargin(
                        left: 8,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgIconBlueGray300,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Get.toNamed(getCurrentRoute(type), id: 1);
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.sectionEndScreenFilledPage;
      case BottomBarEnum.Folder:
        return AppRoutes.fourhundredsevenPage;
      case BottomBarEnum.Usercircleoutline:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.sectionEndScreenFilledPage:
        return SectionEndScreenFilledPage();
      case AppRoutes.fourhundredsevenPage:
        return FourhundredsevenPage();
      default:
        return DefaultWidget();
    }
  }
}
