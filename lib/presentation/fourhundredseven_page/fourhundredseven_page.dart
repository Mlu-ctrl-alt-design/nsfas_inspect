import '../fourhundredseven_page/widgets/fourhundredseve_item_widget.dart';
import 'controller/fourhundredseven_controller.dart';
import 'models/fourhundredseve_item_model.dart';
import 'models/fourhundredseven_model.dart';
import 'package:flutter/material.dart';
import 'package:nsfas_inspect/core/app_export.dart';
import 'package:nsfas_inspect/widgets/app_bar/appbar_image.dart';
import 'package:nsfas_inspect/widgets/app_bar/appbar_subtitle.dart';
import 'package:nsfas_inspect/widgets/app_bar/appbar_title.dart';
import 'package:nsfas_inspect/widgets/app_bar/custom_app_bar.dart';

class FourhundredsevenPage extends StatelessWidget {
  FourhundredsevenController controller =
      Get.put(FourhundredsevenController(FourhundredsevenModel().obs));

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
            left: 19,
            top: 10,
            right: 19,
            bottom: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 21,
                  top: 42,
                ),
                child: Text(
                  "msg_inspection_20231209".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtGolosTextRegular14Bluegray500,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 21,
                  top: 13,
                ),
                child: Text(
                  "lbl_students_house".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtGolosTextSemiBold18,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: getPadding(
                    left: 1,
                    top: 30,
                  ),
                  child: Obx(
                    () => ListView.separated(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: getVerticalSize(
                            1,
                          ),
                        );
                      },
                      itemCount: controller.fourhundredsevenModelObj.value
                          .fourhundredseveItemList.value.length,
                      itemBuilder: (context, index) {
                        FourhundredseveItemModel model = controller
                            .fourhundredsevenModelObj
                            .value
                            .fourhundredseveItemList
                            .value[index];
                        return FourhundredseveItemWidget(
                          model,
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
