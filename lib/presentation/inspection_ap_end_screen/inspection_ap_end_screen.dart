import 'controller/inspection_ap_end_controller.dart';
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

// ignore_for_file: must_be_immutable
class InspectionApEndScreen extends GetWidget<InspectionApEndController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
              top: 251,
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
                  Container(
                    width: getHorizontalSize(
                      358,
                    ),
                    margin: getMargin(
                      top: 8,
                      right: 23,
                    ),
                    child: Text(
                      "msg_accommodation_provider".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtGolosTextSemiBold24,
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    child: Container(
                      width: getHorizontalSize(
                        382,
                      ),
                      margin: getMargin(
                        top: 50,
                      ),
                      padding: getPadding(
                        all: 4,
                      ),
                      decoration: AppDecoration.outlineBluegray300.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 5,
                              top: 5,
                            ),
                            child: Text(
                              "lbl_signature".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGolosTextRegular16,
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
                                top: 60,
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
                  CustomButton(
                    height: getVerticalSize(
                      44,
                    ),
                    text: "lbl_next_section".tr,
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
