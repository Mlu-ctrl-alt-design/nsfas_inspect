import '../controller/section_end_screen_filled_controller.dart';
import '../models/listroomcounter_item_model.dart';
import 'package:flutter/material.dart';
import 'package:nsfas_inspect/core/app_export.dart';

// ignore: must_be_immutable
class ListroomcounterItemWidget extends StatelessWidget {
  ListroomcounterItemWidget(this.listroomcounterItemModelObj);

  ListroomcounterItemModel listroomcounterItemModelObj;

  var controller = Get.find<SectionEndScreenFilledController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 12,
      ),
      decoration: AppDecoration.outlineBluegray1001,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Obx(
                  () => Text(
                    listroomcounterItemModelObj.roomcounterTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtGolosTextSemiBold16Bluegray700,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 7,
                ),
                child: Text(
                  "lbl_ground_floor".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtGolosTextRegular12,
                ),
              ),
            ],
          ),
          Padding(
            padding: getPadding(
              top: 9,
              bottom: 9,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: getPadding(
                    top: 5,
                    bottom: 3,
                  ),
                  child: Obx(
                    () => Text(
                      listroomcounterItemModelObj.conditionTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtGolosTextSemiBold12,
                    ),
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgIconsolidcheckcircle,
                  height: getSize(
                    24,
                  ),
                  width: getSize(
                    24,
                  ),
                  margin: getMargin(
                    left: 5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
