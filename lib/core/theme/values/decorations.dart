import 'package:flutter/material.dart';
import 'package:getx_clean_template_vip/core/theme/values/shadows.dart';

import '../../utils/size_utils.dart';
import '../color_constant.dart';
import 'gradients.dart';


class Decorations {

  static const BoxDecoration secondarySideCurved10 = BoxDecoration(
    color:  AppColors.secondaryColor,
    boxShadow: [
      Shadows.secondaryShadow,
    ],
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );


  static const BoxDecoration accetRoundCurved20 = BoxDecoration(
    color:  AppColors.accentColor,
    boxShadow: [
      Shadows.secondaryShadow,
    ],
    borderRadius: BorderRadius.all(Radius.circular(20)),
  );

  static const BoxDecoration grayRoundCurved20 = BoxDecoration(
    color:  AppColors.gray,
    boxShadow: [
      Shadows.secondaryShadow,
    ],
    borderRadius: BorderRadius.all(Radius.circular(20)),
  );
  static const BoxDecoration whiteSideCurved8 = BoxDecoration(
    color: AppColors.white,
    borderRadius: BorderRadius.all(Radius.circular(8)),
  );
  static const BoxDecoration greenSideCurved8 = BoxDecoration(
    color:  AppColors.lightGreen,
    borderRadius: BorderRadius.all(Radius.circular(8)),
  );


  static final RoundedRectangleBorder cardRectShape = RoundedRectangleBorder(
    borderRadius:  BorderRadius.circular(15.0),);

  static final RoundedRectangleBorder cardRectBorder = RoundedRectangleBorder(
    side: const BorderSide(color: Colors.black, width: 0.3,),
    borderRadius:  BorderRadius.circular(25.0),);


  static final RoundedRectangleBorder cardSqurBorder = RoundedRectangleBorder(
    side: const BorderSide(color: Colors.grey, width: 0.1,),
    borderRadius:  BorderRadius.circular(5.0),);

  static final RoundedRectangleBorder cardSqurBackgrund = RoundedRectangleBorder(
    borderRadius:  BorderRadius.circular(5.0),);

  static const BoxDecoration redRoundCurved = BoxDecoration(
    color:  AppColors.red,
    borderRadius: BorderRadius.all(Radius.circular(20)),
  );

  static const BoxDecoration whiteRoundCurved20 = BoxDecoration(
    color:  AppColors.white,
    borderRadius: BorderRadius.all(Radius.circular(20)),
  );
  static  BoxDecoration whiteRoundCurvfull20 = BoxDecoration(
    border: Border.all(color: Colors.white),
    borderRadius: const BorderRadius.all(Radius.circular(20)),
  );

  static const BoxDecoration categoryButtonDecoration = BoxDecoration(
      gradient: Gradients.secondaryGradient,
      boxShadow: [
        Shadows.secondaryShadow,
      ],
    borderRadius: BorderRadius.all(
      Radius.circular(8),
    )
  );

  static const BoxDecoration halfButtonDecoration = BoxDecoration(
    color:  AppColors.secondaryColor,
    boxShadow: [
      Shadows.secondaryShadow,
    ],
    borderRadius: BorderRadius.only(topLeft: Radius.circular(24.0)),
  );


  static BoxDecoration get outlineLightBlue => BoxDecoration(
    color: AppColors.white,
    border: Border.all(
      color: AppColors.lightBlue,
      width: getHorizontalSize(
        1,
      ),
    ),
  );


  static BoxDecoration get txtOutlineBlue => BoxDecoration(
    border: Border.all(
      color: AppColors.blue50,
      width: getHorizontalSize(
        1,
      ),
    ),
  );

  static BoxDecoration get txtFillLightBlueA20019 => BoxDecoration(
    color: AppColors.lightBlue,
  );
  static BoxDecoration get fillIndigoA200 => BoxDecoration(
    color: AppColors.indigo,
  );
  static BoxDecoration get fillWhiteA700 => const BoxDecoration(
    color: AppColors.white,
  );
  static BoxDecoration get fillLightblueA200 => BoxDecoration(
    color: AppColors.lightBlue,
  );
  static BoxDecoration get txtFillWhiteA700 => const BoxDecoration(
    color: AppColors.white,
  );

  static BoxDecoration get txtOutlineBlue50 => BoxDecoration(
    color: AppColors.white,
    border: Border.all(
      color: AppColors.blue50,
      width: getHorizontalSize(
        1,
      ),
    ),
  );


}

class BorderRadiusStyle {
  static BorderRadius roundedBorder8 = BorderRadius.circular(
    getHorizontalSize(
      8,
    ),
  );

  static BorderRadius circleBorder24 = BorderRadius.circular(
    getHorizontalSize(
      24,
    ),
  );

  static BorderRadius roundedBorder5 = BorderRadius.circular(
    getHorizontalSize(
      5,
    ),
  );

  static BorderRadius circleBorder36 = BorderRadius.circular(
    getHorizontalSize(
      36,
    ),
  );

  static BorderRadius txtRoundedBorder5 = BorderRadius.circular(
    getHorizontalSize(
      5,
    ),
  );

  static BorderRadius txtCircleBorder24 = BorderRadius.circular(
    getHorizontalSize(
      24,
    ),
  );


}
