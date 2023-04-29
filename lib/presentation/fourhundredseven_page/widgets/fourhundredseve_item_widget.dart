import '../controller/fourhundredseven_controller.dart';
import '../models/fourhundredseve_item_model.dart';
import 'package:flutter/material.dart';
import 'package:nsfas_inspect/core/app_export.dart';

// ignore: must_be_immutable
class FourhundredseveItemWidget extends StatelessWidget {
  FourhundredseveItemWidget(this.fourhundredseveItemModelObj);

  FourhundredseveItemModel fourhundredseveItemModelObj;

  var controller = Get.find<FourhundredsevenController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 16,
        top: 19,
        right: 16,
        bottom: 19,
      ),
      decoration: AppDecoration.outlineIndigo50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: getHorizontalSize(
                  71,
                ),
                padding: getPadding(
                  left: 8,
                  top: 1,
                  right: 8,
                  bottom: 1,
                ),
                decoration: AppDecoration.txtFillTealA400.copyWith(
                  borderRadius: BorderRadiusStyle.txtCircleBorder10,
                ),
                child: Obx(
                  () => Text(
                    fourhundredseveItemModelObj.typeTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtGolosTextRegular12Gray50,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 3,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        fourhundredseveItemModelObj.paragraphleadTxt.value,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtGolosTextSemiBold16Gray90001,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 3,
                      ),
                      child: Text(
                        "lbl_kgopotso_riba".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtGolosTextRegular12Bluegray300,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: getPadding(
              top: 24,
              bottom: 21,
            ),
            child: Text(
              "lbl_reassign".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtGolosTextSemiBold14Orange200,
            ),
          ),
        ],
      ),
    );
  }
}
