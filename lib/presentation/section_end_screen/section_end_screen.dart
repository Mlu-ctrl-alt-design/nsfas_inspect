import 'controller/section_end_controller.dart';
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
import 'package:nsfas_inspect/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SectionEndScreen extends GetWidget<SectionEndController> {
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
              top: 33,
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
                      top: 9,
                    ),
                    child: Text(
                      "lbl_rooms".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtGolosTextSemiBold24,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 53,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "msg_conditional_rating".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtGolosTextSemiBold14Bluegray700,
                        ),
                        CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.placeholderController,
                          hintText: "lbl_placeholder".tr,
                          margin: getMargin(
                            top: 4,
                          ),
                          textInputAction: TextInputAction.done,
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
                  Container(
                    width: getHorizontalSize(
                      374,
                    ),
                    margin: getMargin(
                      top: 22,
                      right: 8,
                    ),
                    padding: getPadding(
                      left: 16,
                      top: 6,
                      right: 16,
                      bottom: 6,
                    ),
                    decoration: AppDecoration.outlineBlack9000c.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: getPadding(
                              top: 3,
                            ),
                            child: Text(
                              "lbl_attachments".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGolosTextSemiBold14Bluegray300,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 13,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: getPadding(
                                  bottom: 1,
                                ),
                                child: Text(
                                  "lbl".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtFasolid90022,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 12,
                                  top: 6,
                                ),
                                child: Text(
                                  "msg_upload_your_attachment".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtGolosTextSemiBold14Bluegray700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 14,
                          ),
                          child: Text(
                            "msg_max_3_images_or".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtGolosTextRegular12Bluegray300,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 48,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: CustomButton(
                            height: getVerticalSize(
                              44,
                            ),
                            text: "lbl_add_another".tr,
                            margin: getMargin(
                              right: 8,
                            ),
                            suffixWidget: Container(
                              margin: getMargin(
                                left: 8,
                              ),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgSearchBlueGray300,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: CustomButton(
                            height: getVerticalSize(
                              44,
                            ),
                            text: "lbl_next_section".tr,
                            margin: getMargin(
                              left: 8,
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
