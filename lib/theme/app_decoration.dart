import 'package:flutter/material.dart';
import 'package:meriem_s_application1/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Gradient decorations
  static BoxDecoration get gradientBlueToDeepPurpleA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.33, -0.13),
          end: Alignment(1.37, 0.85),
          colors: [
            appTheme.blue700,
            appTheme.deepPurpleA100,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineIndigoA => BoxDecoration(
        border: Border.all(
          color: appTheme.indigoA400,
          width: 2.h,
        ),
      );
}

class BorderRadiusStyle {
  // Rounded borders
  static BorderRadius get roundedBorder15 => BorderRadius.circular(
        15.h,
      );
  static BorderRadius get roundedBorder7 => BorderRadius.circular(
        7.h,
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
