import 'controller/thirtythree_controller.dart';
import 'package:flutter/material.dart';
import 'package:nsfas_inspect/core/app_export.dart';
import 'package:nsfas_inspect/presentation/fourhundredseven_page/fourhundredseven_page.dart';
import 'package:nsfas_inspect/presentation/section_end_screen_filled_page/section_end_screen_filled_page.dart';
import 'package:nsfas_inspect/widgets/app_bar/appbar_image.dart';
import 'package:nsfas_inspect/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:nsfas_inspect/widgets/app_bar/appbar_title.dart';
import 'package:nsfas_inspect/widgets/app_bar/custom_app_bar.dart';
import 'package:nsfas_inspect/widgets/custom_bottom_bar.dart';
import 'package:nsfas_inspect/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class ThirtythreeScreen extends GetWidget<ThirtythreeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            74,
          ),
          leadingWidth: 72,
          leading: AppbarImage(
            height: getVerticalSize(
              42,
            ),
            width: getHorizontalSize(
              52,
            ),
            imagePath: ImageConstant.imgImage542x52,
            margin: getMargin(
              left: 20,
              top: 16,
              bottom: 16,
            ),
          ),
          title: AppbarTitle(
            text: "lbl_nsfas_housing".tr,
            margin: getMargin(
              left: 79,
            ),
          ),
          actions: [
            AppbarSubtitle1(
              text: "lbl_kr".tr,
              margin: getMargin(
                left: 19,
                top: 26,
                right: 19,
                bottom: 16,
              ),
            ),
          ],
          styleType: Style.bgFillWhiteA700,
        ),
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.maxFinite,
                child: Container(
                  padding: getPadding(
                    left: 15,
                    top: 12,
                    right: 15,
                    bottom: 12,
                  ),
                  decoration: AppDecoration.outlineIndigo501,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          left: 1,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 4,
                              ),
                              child: Text(
                                "msg_facility_location2".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGolosTextSemiBold16Yellow900,
                              ),
                            ),
                            Container(
                              padding: getPadding(
                                left: 8,
                                top: 3,
                                right: 8,
                                bottom: 3,
                              ),
                              decoration:
                                  AppDecoration.outlineOrange400.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder12,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 1,
                                    ),
                                    child: Text(
                                      "lbl_1".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtGolosTextSemiBold12Orange600,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 2,
                                      top: 1,
                                    ),
                                    child: Text(
                                      "lbl_of_11".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtGolosTextSemiBold12Black900,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          left: 1,
                          top: 11,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: CustomImageView(
                                svgPath: ImageConstant.imgVideocamera,
                                height: getVerticalSize(
                                  6,
                                ),
                                width: getHorizontalSize(
                                  31,
                                ),
                                margin: getMargin(
                                  right: 2,
                                ),
                              ),
                            ),
                            Expanded(
                              child: CustomImageView(
                                svgPath: ImageConstant.imgMenu,
                                height: getVerticalSize(
                                  6,
                                ),
                                width: getHorizontalSize(
                                  31,
                                ),
                                margin: getMargin(
                                  left: 2,
                                  right: 2,
                                ),
                              ),
                            ),
                            Expanded(
                              child: CustomImageView(
                                svgPath: ImageConstant.imgMenu,
                                height: getVerticalSize(
                                  6,
                                ),
                                width: getHorizontalSize(
                                  31,
                                ),
                                margin: getMargin(
                                  left: 2,
                                  right: 2,
                                ),
                              ),
                            ),
                            Expanded(
                              child: CustomImageView(
                                svgPath: ImageConstant.imgMenu,
                                height: getVerticalSize(
                                  6,
                                ),
                                width: getHorizontalSize(
                                  31,
                                ),
                                margin: getMargin(
                                  left: 2,
                                  right: 2,
                                ),
                              ),
                            ),
                            Expanded(
                              child: CustomImageView(
                                svgPath: ImageConstant.imgMenu,
                                height: getVerticalSize(
                                  6,
                                ),
                                width: getHorizontalSize(
                                  31,
                                ),
                                margin: getMargin(
                                  left: 2,
                                  right: 2,
                                ),
                              ),
                            ),
                            Expanded(
                              child: CustomImageView(
                                svgPath: ImageConstant.imgMenu,
                                height: getVerticalSize(
                                  6,
                                ),
                                width: getHorizontalSize(
                                  31,
                                ),
                                margin: getMargin(
                                  left: 2,
                                  right: 2,
                                ),
                              ),
                            ),
                            Expanded(
                              child: CustomImageView(
                                svgPath: ImageConstant.imgMenu,
                                height: getVerticalSize(
                                  6,
                                ),
                                width: getHorizontalSize(
                                  31,
                                ),
                                margin: getMargin(
                                  left: 2,
                                  right: 2,
                                ),
                              ),
                            ),
                            Expanded(
                              child: CustomImageView(
                                svgPath: ImageConstant.imgMenu,
                                height: getVerticalSize(
                                  6,
                                ),
                                width: getHorizontalSize(
                                  31,
                                ),
                                margin: getMargin(
                                  left: 2,
                                  right: 2,
                                ),
                              ),
                            ),
                            Expanded(
                              child: CustomImageView(
                                svgPath: ImageConstant.imgMenu,
                                height: getVerticalSize(
                                  6,
                                ),
                                width: getHorizontalSize(
                                  31,
                                ),
                                margin: getMargin(
                                  left: 2,
                                  right: 2,
                                ),
                              ),
                            ),
                            Expanded(
                              child: CustomImageView(
                                svgPath: ImageConstant.imgMenu,
                                height: getVerticalSize(
                                  6,
                                ),
                                width: getHorizontalSize(
                                  31,
                                ),
                                margin: getMargin(
                                  left: 2,
                                  right: 2,
                                ),
                              ),
                            ),
                            Expanded(
                              child: CustomImageView(
                                svgPath: ImageConstant.imgMenu,
                                height: getVerticalSize(
                                  6,
                                ),
                                width: getHorizontalSize(
                                  31,
                                ),
                                margin: getMargin(
                                  left: 2,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: getHorizontalSize(
                  383,
                ),
                margin: getMargin(
                  left: 16,
                  top: 24,
                  right: 15,
                ),
                padding: getPadding(
                  left: 4,
                  top: 14,
                  right: 4,
                  bottom: 14,
                ),
                decoration: AppDecoration.fillGray50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 2,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "lbl_question".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtGolosTextSemiBold14Yellow900,
                          ),
                          Padding(
                            padding: getPadding(
                              left: 4,
                            ),
                            child: Text(
                              "lbl_2_of_4".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGolosTextSemiBold14Yellow900,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(
                        363,
                      ),
                      margin: getMargin(
                        top: 5,
                        right: 11,
                      ),
                      child: Text(
                        "msg_is_the_service_provider".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtGolosTextRegular18,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: getMargin(
                  left: 16,
                  top: 24,
                  right: 15,
                ),
                padding: getPadding(
                  left: 4,
                  top: 25,
                  right: 4,
                  bottom: 25,
                ),
                decoration: AppDecoration.outlineGray100.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: getHorizontalSize(
                        66,
                      ),
                      child: Text(
                        "msg_evaluator_s_rating".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtGolosTextSemiBold12Bluegray500,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 21,
                        bottom: 6,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              margin: getMargin(
                                right: 4,
                              ),
                              padding: getPadding(
                                left: 18,
                                top: 4,
                                right: 18,
                                bottom: 4,
                              ),
                              decoration: AppDecoration.fillGray100.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgIcon5,
                                    height: getSize(
                                      32,
                                    ),
                                    width: getSize(
                                      32,
                                    ),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(
                                        1,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: getMargin(
                                left: 4,
                                right: 4,
                              ),
                              padding: getPadding(
                                left: 18,
                                top: 4,
                                right: 18,
                                bottom: 4,
                              ),
                              decoration: AppDecoration.fillGray100.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgIcon6,
                                    height: getSize(
                                      32,
                                    ),
                                    width: getSize(
                                      32,
                                    ),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(
                                        1,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: getMargin(
                                left: 4,
                                right: 4,
                              ),
                              padding: getPadding(
                                left: 18,
                                top: 4,
                                right: 18,
                                bottom: 4,
                              ),
                              decoration: AppDecoration.fillGray100.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgIcon7,
                                    height: getSize(
                                      32,
                                    ),
                                    width: getSize(
                                      32,
                                    ),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(
                                        1,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: getMargin(
                                left: 4,
                                right: 4,
                              ),
                              padding: getPadding(
                                left: 18,
                                top: 4,
                                right: 18,
                                bottom: 4,
                              ),
                              decoration: AppDecoration.fillGray100.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgIcon8,
                                    height: getSize(
                                      32,
                                    ),
                                    width: getSize(
                                      32,
                                    ),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(
                                        1,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: getMargin(
                                left: 4,
                              ),
                              padding: getPadding(
                                left: 18,
                                top: 4,
                                right: 18,
                                bottom: 4,
                              ),
                              decoration: AppDecoration.fillGray100.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgIcon9,
                                    height: getSize(
                                      32,
                                    ),
                                    width: getSize(
                                      32,
                                    ),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(
                                        1,
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
                  ],
                ),
              ),
              Container(
                margin: getMargin(
                  left: 17,
                  top: 16,
                  right: 15,
                ),
                padding: getPadding(
                  left: 10,
                  top: 7,
                  right: 10,
                  bottom: 7,
                ),
                decoration: AppDecoration.outlineGray900,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgIconoutlinein,
                      height: getSize(
                        16,
                      ),
                      width: getSize(
                        16,
                      ),
                      margin: getMargin(
                        top: 2,
                        bottom: 18,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: getHorizontalSize(
                          327,
                        ),
                        margin: getMargin(
                          left: 10,
                          top: 3,
                          right: 8,
                        ),
                        child: Text(
                          "msg_landlord_to_provide".tr,
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtGolosTextRegular12Gray700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                width: double.maxFinite,
                child: Container(
                  padding: getPadding(
                    left: 16,
                    right: 16,
                  ),
                  decoration: AppDecoration.fillWhiteA700,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: CustomButton(
                              height: getVerticalSize(
                                44,
                              ),
                              text: "lbl_previous".tr,
                              margin: getMargin(
                                right: 4,
                              ),
                              padding: ButtonPadding.PaddingT12_1,
                              fontStyle:
                                  ButtonFontStyle.GolosTextSemiBold16Gray90001,
                              prefixWidget: Container(
                                margin: getMargin(
                                  right: 8,
                                ),
                                child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowleft,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: CustomButton(
                              height: getVerticalSize(
                                44,
                              ),
                              text: "lbl_next".tr,
                              margin: getMargin(
                                left: 4,
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
                          ),
                        ],
                      ),
                      Container(
                        margin: getMargin(
                          left: 150,
                          top: 20,
                          right: 150,
                          bottom: 92,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgIconGray90001,
                              height: getSize(
                                20,
                              ),
                              width: getSize(
                                20,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 8,
                              ),
                              child: Text(
                                "lbl_cancel".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style:
                                    AppStyle.txtGolosTextSemiBold16Bluegray700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
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
