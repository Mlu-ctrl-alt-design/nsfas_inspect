import 'controller/screenloader_controller.dart';
import 'package:flutter/material.dart';
import 'package:nsfas_inspect/core/app_export.dart';
import 'package:nsfas_inspect/presentation/fourhundredseven_page/fourhundredseven_page.dart';
import 'package:nsfas_inspect/presentation/section_end_screen_filled_page/section_end_screen_filled_page.dart';
import 'package:nsfas_inspect/widgets/app_bar/appbar_image.dart';
import 'package:nsfas_inspect/widgets/app_bar/appbar_subtitle.dart';
import 'package:nsfas_inspect/widgets/app_bar/appbar_title.dart';
import 'package:nsfas_inspect/widgets/app_bar/custom_app_bar.dart';
import 'package:nsfas_inspect/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class ScreenloaderScreen extends GetWidget<ScreenloaderController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.maxFinite,
                child: Container(
                  decoration: AppDecoration.outlineBlack90019,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomAppBar(
                        height: getVerticalSize(
                          298,
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
                    ],
                  ),
                ),
              ),
              Container(
                padding: getPadding(
                  top: 110,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgSettings,
                      height: getVerticalSize(
                        39,
                      ),
                      width: getHorizontalSize(
                        84,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 15,
                        bottom: 5,
                      ),
                      child: Text(
                        "lbl_loading".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtGolosTextSemiBold18,
                      ),
                    ),
                  ],
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
