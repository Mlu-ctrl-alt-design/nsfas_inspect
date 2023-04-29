import 'package:flutter/material.dart';
import 'package:nsfas_inspect/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? getVerticalSize(40),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll14:
        return getPadding(
          all: 14,
        );
      case ButtonPadding.PaddingT12_1:
        return getPadding(
          top: 12,
          right: 12,
          bottom: 12,
        );
      default:
        return getPadding(
          left: 12,
          top: 12,
          bottom: 12,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillYellow900:
        return ColorConstant.yellow900;
      default:
        return ColorConstant.gray100;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            4.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.GolosTextSemiBold16:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Golos Text',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.GolosTextSemiBold16Gray90001:
        return TextStyle(
          color: ColorConstant.gray90001,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Golos Text',
          fontWeight: FontWeight.w600,
        );
      default:
        return TextStyle(
          color: ColorConstant.blueGray300,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Golos Text',
          fontWeight: FontWeight.w600,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder4,
}

enum ButtonPadding {
  PaddingT12,
  PaddingAll14,
  PaddingT12_1,
}

enum ButtonVariant {
  FillGray100,
  FillYellow900,
}

enum ButtonFontStyle {
  GolosTextSemiBold16Bluegray300,
  GolosTextSemiBold16,
  GolosTextSemiBold16Gray90001,
}
