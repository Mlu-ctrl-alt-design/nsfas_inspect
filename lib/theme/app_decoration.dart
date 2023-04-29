import 'package:flutter/material.dart';
import 'package:nsfas_inspect/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get outlineBluegray100 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border(
          top: BorderSide(
            color: ColorConstant.blueGray100,
            width: getHorizontalSize(
              1,
            ),
          ),
          left: BorderSide(
            color: ColorConstant.blueGray100,
            width: getHorizontalSize(
              1,
            ),
          ),
          right: BorderSide(
            color: ColorConstant.blueGray100,
            width: getHorizontalSize(
              1,
            ),
          ),
        ),
      );
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: ColorConstant.gray50,
      );
  static BoxDecoration get outlineBluegray300 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.blueGray300,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get txtFillTealA400 => BoxDecoration(
        color: ColorConstant.tealA400,
      );
  static BoxDecoration get outlineGray900 => BoxDecoration(
        color: ColorConstant.gray50,
        border: Border(
          left: BorderSide(
            color: ColorConstant.gray900,
            width: getHorizontalSize(
              2,
            ),
          ),
        ),
      );
  static BoxDecoration get fillIndigo50 => BoxDecoration(
        color: ColorConstant.indigo50,
      );
  static BoxDecoration get outlineBluegray700 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.blueGray700,
          width: getHorizontalSize(
            2,
          ),
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get txtFillYellow100 => BoxDecoration(
        color: ColorConstant.yellow100,
      );
  static BoxDecoration get outlineIndigo50 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border(
          bottom: BorderSide(
            color: ColorConstant.indigo50,
            width: getHorizontalSize(
              1,
            ),
          ),
        ),
      );
  static BoxDecoration get outlineGray100 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.gray100,
          width: getHorizontalSize(
            1,
          ),
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get txtFillBlue100 => BoxDecoration(
        color: ColorConstant.blue100,
      );
  static BoxDecoration get outlineBluegray1003 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.blueGray100,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get outlineBluegray1002 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.blueGray100,
          width: getHorizontalSize(
            1,
          ),
          strokeAlign: strokeAlignOutside,
        ),
      );
  static BoxDecoration get outlineBluegray1001 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border(
          left: BorderSide(
            color: ColorConstant.blueGray100,
            width: getHorizontalSize(
              1,
            ),
          ),
          right: BorderSide(
            color: ColorConstant.blueGray100,
            width: getHorizontalSize(
              1,
            ),
          ),
        ),
      );
  static BoxDecoration get outlineIndigo501 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border(
          bottom: BorderSide(
            color: ColorConstant.indigo50,
            width: getHorizontalSize(
              1,
            ),
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black90019,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9000c => BoxDecoration(
        color: ColorConstant.gray50,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9000c,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOrange400 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.orange400,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: ColorConstant.gray100,
      );
  static BoxDecoration get outlineBlack90019 => BoxDecoration();
  static BoxDecoration get fillGray5001 => BoxDecoration(
        color: ColorConstant.gray5001,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder8 = BorderRadius.circular(
    getHorizontalSize(
      8,
    ),
  );

  static BorderRadius txtCircleBorder16 = BorderRadius.circular(
    getHorizontalSize(
      16,
    ),
  );

  static BorderRadius roundedBorder5 = BorderRadius.circular(
    getHorizontalSize(
      5,
    ),
  );

  static BorderRadius roundedBorder12 = BorderRadius.circular(
    getHorizontalSize(
      12,
    ),
  );

  static BorderRadius roundedBorder1 = BorderRadius.circular(
    getHorizontalSize(
      1,
    ),
  );

  static BorderRadius customBorderTL16 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        16,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        16,
      ),
    ),
  );

  static BorderRadius customBorderTL8 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        8,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        8,
      ),
    ),
  );

  static BorderRadius txtCircleBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
