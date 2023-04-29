import '../section_end_screen_filled_page/widgets/listroomcounter_item_widget.dart';
import 'controller/section_end_screen_filled_controller.dart';
import 'models/listroomcounter_item_model.dart';
import 'models/section_end_screen_filled_model.dart';
import 'package:flutter/material.dart';
import 'package:nsfas_inspect/core/app_export.dart';
import 'package:nsfas_inspect/widgets/app_bar/appbar_image.dart';
import 'package:nsfas_inspect/widgets/app_bar/appbar_subtitle.dart';
import 'package:nsfas_inspect/widgets/app_bar/appbar_title.dart';
import 'package:nsfas_inspect/widgets/app_bar/custom_app_bar.dart';
import 'package:nsfas_inspect/widgets/custom_button.dart';
import 'package:nsfas_inspect/widgets/custom_drop_down.dart';

// ignore_for_file: must_be_immutable
class SectionEndScreenFilledPage extends StatelessWidget {
  SectionEndScreenFilledController controller = Get.put(
      SectionEndScreenFilledController(SectionEndScreenFilledModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(74),
                leadingWidth: 82,
                leading: AppbarImage(
                    height: getVerticalSize(42),
                    width: getHorizontalSize(66),
                    imagePath: ImageConstant.imgImage5,
                    margin: getMargin(left: 16, top: 16, bottom: 16)),
                title: AppbarTitle(
                    text: "lbl_nsfas_housing".tr, margin: getMargin(left: 75)),
                actions: [
                  AppbarSubtitle(
                      text: "lbl_kr".tr,
                      margin:
                          getMargin(left: 16, top: 26, right: 16, bottom: 16))
                ],
                styleType: Style.bgFillWhiteA700),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 33, right: 16, bottom: 33),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("lbl_section_name".tr.toUpperCase(),
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtGolosTextSemiBold14Bluegray300),
                      Padding(
                          padding: getPadding(top: 9),
                          child: Text("lbl_rooms".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGolosTextSemiBold24)),
                      Padding(
                          padding: getPadding(top: 18),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: CustomButton(
                                        height: getVerticalSize(44),
                                        text: "lbl_add_another".tr,
                                        margin: getMargin(right: 8),
                                        variant: ButtonVariant.FillYellow900,
                                        fontStyle:
                                            ButtonFontStyle.GolosTextSemiBold16,
                                        suffixWidget: Container(
                                            margin: getMargin(left: 8),
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgSearch)))),
                                Expanded(
                                    child: CustomButton(
                                        height: getVerticalSize(44),
                                        text: "lbl_next_section".tr,
                                        margin: getMargin(left: 8),
                                        fontStyle: ButtonFontStyle
                                            .GolosTextSemiBold16Gray90001,
                                        suffixWidget: Container(
                                            margin: getMargin(left: 8),
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgIcon))))
                              ])),
                      GestureDetector(
                          onTap: () {
                            onTapMultilineaccord();
                          },
                          child: Padding(
                              padding: getPadding(top: 18, bottom: 5),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        padding: getPadding(
                                            left: 12,
                                            top: 16,
                                            right: 12,
                                            bottom: 16),
                                        decoration:
                                            AppDecoration.outlineBluegray100,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      top: 4, bottom: 3),
                                                  child: Text(
                                                      "lbl_inspected_rooms".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtGolosTextSemiBold14Bluegray700)),
                                              CustomDropDown(
                                                  width: getHorizontalSize(59),
                                                  focusNode: FocusNode(),
                                                  hintText: "lbl_grade".tr,
                                                  items: controller
                                                      .sectionEndScreenFilledModelObj
                                                      .value
                                                      .dropdownItemList
                                                      .value,
                                                  onChanged: (value) {
                                                    controller
                                                        .onSelected(value);
                                                  })
                                            ])),
                                    Expanded(
                                        child: Obx(() => ListView.separated(
                                            physics: BouncingScrollPhysics(),
                                            shrinkWrap: true,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                  height: getVerticalSize(1));
                                            },
                                            itemCount: controller
                                                .sectionEndScreenFilledModelObj
                                                .value
                                                .listroomcounterItemList
                                                .value
                                                .length,
                                            itemBuilder: (context, index) {
                                              ListroomcounterItemModel model =
                                                  controller
                                                      .sectionEndScreenFilledModelObj
                                                      .value
                                                      .listroomcounterItemList
                                                      .value[index];
                                              return ListroomcounterItemWidget(
                                                  model);
                                            }))),
                                    Container(
                                        height: getVerticalSize(44),
                                        width: getHorizontalSize(382),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.whiteA700,
                                            border: Border(
                                                left: BorderSide(
                                                    color: ColorConstant
                                                        .blueGray100,
                                                    width:
                                                        getHorizontalSize(1)),
                                                bottom: BorderSide(
                                                    color: ColorConstant
                                                        .blueGray100,
                                                    width:
                                                        getHorizontalSize(1)),
                                                right: BorderSide(
                                                    color: ColorConstant
                                                        .blueGray100,
                                                    width:
                                                        getHorizontalSize(1)))))
                                  ])))
                    ]))));
  }

  onTapMultilineaccord() {
    Get.toNamed(
      AppRoutes.twelveScreen,
    );
  }
}
