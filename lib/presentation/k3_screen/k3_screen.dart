import 'controller/k3_controller.dart';
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
class K3Screen extends GetWidget<K3Controller> {
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
              top: 209,
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "msg_room_name_number".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGolosTextSemiBold14Bluegray700,
                            ),
                            CustomTextFormField(
                              width: getHorizontalSize(
                                146,
                              ),
                              focusNode: FocusNode(),
                              controller: controller.roomsizeController,
                              hintText: "lbl_placeholder".tr,
                              margin: getMargin(
                                top: 4,
                              ),
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_room_type".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGolosTextSemiBold14Bluegray700,
                            ),
                            CustomTextFormField(
                              width: getHorizontalSize(
                                228,
                              ),
                              focusNode: FocusNode(),
                              controller: controller.roomsizeoneController,
                              hintText: "lbl_placeholder".tr,
                              margin: getMargin(
                                top: 3,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 25,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_room_size".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGolosTextSemiBold14Bluegray700,
                            ),
                            CustomTextFormField(
                              width: getHorizontalSize(
                                146,
                              ),
                              focusNode: FocusNode(),
                              controller: controller.roomsizetwoController,
                              hintText: "lbl_placeholder".tr,
                              margin: getMargin(
                                top: 5,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_floor_number".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGolosTextSemiBold14Bluegray700,
                            ),
                            CustomTextFormField(
                              width: getHorizontalSize(
                                228,
                              ),
                              focusNode: FocusNode(),
                              controller: controller.roomsizethreeController,
                              hintText: "lbl_placeholder".tr,
                              margin: getMargin(
                                top: 5,
                              ),
                              textInputAction: TextInputAction.done,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  CustomButton(
                    height: getVerticalSize(
                      44,
                    ),
                    text: "lbl_start_section".tr,
                    margin: getMargin(
                      top: 48,
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
