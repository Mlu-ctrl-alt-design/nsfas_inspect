import 'package:flutter/material.dart';
import 'package:nsfas_inspect/core/app_export.dart';

// ignore: must_be_immutable
class AppbarSubtitle extends StatelessWidget {
  AppbarSubtitle({required this.text, this.margin, this.onTap});

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Container(
          width: getSize(
            32,
          ),
          padding: getPadding(
            left: 6,
            top: 7,
            right: 6,
            bottom: 7,
          ),
          decoration: AppDecoration.txtFillBlue100.copyWith(
            borderRadius: BorderRadiusStyle.txtCircleBorder16,
          ),
          child: Text(
            text,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtGolosTextSemiBold14.copyWith(
              color: ColorConstant.black900,
            ),
          ),
        ),
      ),
    );
  }
}
