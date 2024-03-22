import 'package:flutter/material.dart';
import 'package:meriem_s_application1/core/utils/size_utils.dart';
import 'package:meriem_s_application1/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Headline text style
  static get headlineLargeWhiteA700 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  // Label text style
  static get labelMediumIndigoA200 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.indigoA200,
        fontWeight: FontWeight.w500,
      );
  // Poppins text style
  static get poppinsGray500 => TextStyle(
        color: appTheme.gray500,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w500,
      ).poppins;
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
