import 'controller/twelve_controller.dart';
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
class TwelveScreen extends GetWidget<TwelveController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray5001,
        appBar: CustomAppBar(
          height: getVerticalSize(
            74,
          ),
          leadingWidth: 74,
          leading: AppbarImage(
            height: getVerticalSize(
              42,
            ),
            width: getHorizontalSize(
              66,
            ),
            imagePath: ImageConstant.imgImage5,
            margin: getMargin(
              left: 8,
              top: 16,
              bottom: 16,
            ),
          ),
          title: AppbarTitle(
            text: "lbl_nsfas_housing".tr,
            margin: getMargin(
              left: 83,
            ),
          ),
          actions: [
            AppbarSubtitle(
              text: "lbl_kr".tr,
              margin: getMargin(
                left: 8,
                top: 26,
                right: 8,
                bottom: 16,
              ),
            ),
          ],
          styleType: Style.bgOutlineBluegray100,
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 20,
            top: 38,
            right: 20,
            bottom: 38,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "lbl_new_inspections".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtGolosTextSemiBold24Bluegray500,
              ),
              Padding(
                padding: getPadding(
                  top: 71,
                ),
                child: Text(
                  "lbl_new".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtGolosTextRegular16Black900,
                ),
              ),
              Container(
                width: double.maxFinite,
                child: Container(
                  width: getHorizontalSize(
                    374,
                  ),
                  margin: getMargin(
                    top: 17,
                  ),
                  padding: getPadding(
                    left: 16,
                    top: 15,
                    right: 16,
                    bottom: 15,
                  ),
                  decoration: AppDecoration.outlineBluegray1002.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder5,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "msg_inspection_at_capetown".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtGolosTextSemiBold16Bluegray500,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 13,
                        ),
                        child: Text(
                          "msg_task_created_on".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtGolosTextRegular12Bluegray400,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 4,
                          top: 15,
                        ),
                        child: Row(
                          children: [
                            CustomImageView(
                              svgPath:
                                  ImageConstant.imgIconoutlineofficebuilding,
                              height: getSize(
                                16,
                              ),
                              width: getSize(
                                16,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 4,
                                top: 1,
                              ),
                              child: Text(
                                "lbl_22".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGolosTextRegular12,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgHotelsinglebed,
                              height: getSize(
                                16,
                              ),
                              width: getSize(
                                16,
                              ),
                              margin: getMargin(
                                left: 12,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 4,
                                top: 1,
                              ),
                              child: Text(
                                "lbl_123".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGolosTextRegular12,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgHoteldoublebed,
                              height: getSize(
                                16,
                              ),
                              width: getSize(
                                16,
                              ),
                              margin: getMargin(
                                left: 12,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 8,
                                top: 1,
                              ),
                              child: Text(
                                "lbl_23".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGolosTextRegular12,
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
                margin: getMargin(
                  top: 16,
                  bottom: 5,
                ),
                padding: getPadding(
                  all: 16,
                ),
                decoration: AppDecoration.outlineBluegray1003.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 3,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "msg_recently_completed".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtGolosTextSemiBold16Bluegray500,
                          ),
                          Padding(
                            padding: getPadding(
                              top: 6,
                            ),
                            child: Text(
                              "lbl_inspections".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGolosTextRegular14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowdown,
                      height: getSize(
                        20,
                      ),
                      width: getSize(
                        20,
                      ),
                      margin: getMargin(
                        top: 13,
                        bottom: 13,
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
