import 'package:flutter/material.dart';

import '../constants/string_constants.dart';
import '../utils/size_utils.dart';
import 'color_constant.dart';

/// generic Text style class,
/// we can define our text variables based on our use cases
class AppTextStyle {
  static TextStyle txtBold10 = TextStyle(
    color: AppColors.black,
    fontSize: getFontSize(
      10,
    ),
    fontFamily: AppStrings.fontName,
    fontWeight: FontWeight.w700,
  );

  static TextStyle txtBold12 = TextStyle(
    color: AppColors.black,
    fontSize: getFontSize(
      12,
    ),
    fontFamily: AppStrings.fontName,
    fontWeight: FontWeight.w700,
  );

  static TextStyle txtBold14 = TextStyle(
    color: AppColors.black,
    fontSize: getFontSize(
      14,
    ),
    fontFamily: AppStrings.fontName,
    fontWeight: FontWeight.w700,
  );

  static TextStyle txtBold16 = TextStyle(
    color: AppColors.black,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: AppStrings.fontName,
    fontWeight: FontWeight.w700,
  );

  static TextStyle txt10 = TextStyle(
    color: AppColors.black,
    fontSize: getFontSize(
      10,
    ),
    fontFamily: AppStrings.fontName,
  );
  static TextStyle txt12 = TextStyle(
    color: AppColors.black,
    fontSize: getFontSize(
      12,
    ),
    fontFamily: AppStrings.fontName,
  );

  static TextStyle txt14 = TextStyle(
    color: AppColors.black,
    fontSize: getFontSize(
      14,
    ),
    fontFamily: AppStrings.fontName,
  );
  static TextStyle txt16 = TextStyle(
    color: AppColors.black,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: AppStrings.fontName,
  );

  static TextStyle txtMainColorBold20 = TextStyle(
    color: AppColors.mainColor,
    fontSize: getFontSize(
      20,
    ),
    fontFamily: AppStrings.fontName,
    fontWeight: FontWeight.w700,
  );

  static TextStyle txtMainColorBold12 = TextStyle(
    color: AppColors.mainColor,
    fontSize: getFontSize(
      12,
    ),
    fontWeight: FontWeight.w700,
    fontFamily: AppStrings.fontName,
  );

  static TextStyle txtWhite14 = TextStyle(
    color: AppColors.white,
    fontSize: getFontSize(
      14,
    ),
    fontFamily: AppStrings.fontName,
  );

  static TextStyle txtBoldWhite12 = TextStyle(
    color: AppColors.white,
    fontSize: getFontSize(
      12,
    ),
    fontFamily: AppStrings.fontName,
    fontWeight: FontWeight.w700,
  );

  static TextStyle txtBoldWhite14 = TextStyle(
    color: AppColors.white,
    fontSize: getFontSize(
      14,
    ),
    fontFamily: AppStrings.fontName,
    fontWeight: FontWeight.w700,
  );
  static TextStyle txtBoldWhite16 = TextStyle(
    color: AppColors.white,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: AppStrings.fontName,
    fontWeight: FontWeight.w700,
  );

  static TextStyle txtBoldWhite22 = TextStyle(
    color: AppColors.white,
    fontSize: getFontSize(
      22,
    ),
    fontFamily: AppStrings.fontName,
    fontWeight: FontWeight.w700,
  );

  static TextStyle txtBoldWhite20 = TextStyle(
    color: AppColors.white,
    fontSize: getFontSize(
      20,
    ),
    fontFamily: AppStrings.fontName,
    fontWeight: FontWeight.w700,
  );

  static TextStyle txtBoldWhite24 = TextStyle(
    color: AppColors.white,
    fontSize: getFontSize(
      24,
    ),
    fontFamily: AppStrings.fontName,
    fontWeight: FontWeight.w700,
  );
}
