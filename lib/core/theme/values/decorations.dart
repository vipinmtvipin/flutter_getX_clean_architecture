import 'package:flutter/material.dart';
import 'package:getx_clean_template_vip/core/theme/color_constant.dart';
import 'package:getx_clean_template_vip/core/theme/values/shadows.dart';

import '../../utils/size_utils.dart';
import 'gradients.dart';


class Decorations {

  static const BoxDecoration secondarySideCurved = BoxDecoration(
    color:  ColorConstant.secondaryColor,
    boxShadow: [
      Shadows.secondaryShadow,
    ],
    borderRadius: BorderRadius.all(Radius.circular(8)),
  );

  static const BoxDecoration secondaryRounfCurved = BoxDecoration(
    color:  ColorConstant.secondaryColor,
    boxShadow: [
      Shadows.secondaryShadow,
    ],
    borderRadius: BorderRadius.all(Radius.circular(20)),
  );

  static const BoxDecoration accetRounfCurved = BoxDecoration(
    color:  ColorConstant.accentColor,
    boxShadow: [
      Shadows.secondaryShadow,
    ],
    borderRadius: BorderRadius.all(Radius.circular(20)),
  );
  static const BoxDecoration grayRounfCurved = BoxDecoration(
    color:  ColorConstant.gray,
    boxShadow: [
      Shadows.secondaryShadow,
    ],
    borderRadius: BorderRadius.all(Radius.circular(20)),
  );
  static const BoxDecoration whiteSideCurved = BoxDecoration(
    color: ColorConstant.white,
    borderRadius: BorderRadius.all(Radius.circular(8)),
  );
  static const BoxDecoration greenSideCurved = BoxDecoration(
    color:  ColorConstant.light_green,
    borderRadius: BorderRadius.all(Radius.circular(8)),
  );


  static final RoundedRectangleBorder cardRectShape = RoundedRectangleBorder(
    borderRadius:  BorderRadius.circular(15.0),);

  static final RoundedRectangleBorder cardRectBorder = RoundedRectangleBorder(
    side: BorderSide(color: Colors.black, width: 0.3,),
    borderRadius:  BorderRadius.circular(25.0),);


  static final RoundedRectangleBorder cardSqurBorder = RoundedRectangleBorder(
    side: BorderSide(color: Colors.grey, width: 0.1,),
    borderRadius:  BorderRadius.circular(5.0),);

  static final RoundedRectangleBorder cardSqurBackgrund = RoundedRectangleBorder(
    borderRadius:  BorderRadius.circular(5.0),);

  static const BoxDecoration redRoundCurved = BoxDecoration(
    color:  ColorConstant.red,
    borderRadius: BorderRadius.all(Radius.circular(20)),
  );

  static const BoxDecoration whiteRoundCurved = BoxDecoration(
    color:  ColorConstant.white,
    borderRadius: BorderRadius.all(Radius.circular(20)),
  );
  static  BoxDecoration whiteRoundCurvfull = BoxDecoration(
    border: Border.all(color: Colors.white),
    borderRadius: BorderRadius.all(Radius.circular(20)),
  );
  static const BoxDecoration categoryButtonDecoration = BoxDecoration(
      gradient: Gradients.secondaryGradient2,
      boxShadow: [
        Shadows.secondaryShadow,
      ],
    borderRadius: BorderRadius.all(
      Radius.circular(8),
    )
  );

  static const BoxDecoration halfButtonDecoration = BoxDecoration(
    color:  ColorConstant.secondaryColor,
    boxShadow: [
      Shadows.secondaryShadow,
    ],
    borderRadius: BorderRadius.only(topLeft: Radius.circular(24.0)),
  );


  static BoxDecoration get outlineLightblue => BoxDecoration(
    color: ColorConstant.white,
    border: Border.all(
      color: ColorConstant.lightBlue,
      width: getHorizontalSize(
        1,
      ),
    ),
  );
  static BoxDecoration get txtOutlineBlue501 => BoxDecoration(
    border: Border.all(
      color: ColorConstant.blue50,
      width: getHorizontalSize(
        1,
      ),
    ),
  );
  static BoxDecoration get txtFillLightblueA20019 => BoxDecoration(
    color: ColorConstant.lightBlue,
  );
  static BoxDecoration get fillIndigoA200 => BoxDecoration(
    color: ColorConstant.indigo,
  );
  static BoxDecoration get fillWhiteA700 => const BoxDecoration(
    color: ColorConstant.white,
  );
  static BoxDecoration get fillLightblueA200 => BoxDecoration(
    color: ColorConstant.lightBlue,
  );
  static BoxDecoration get txtFillWhiteA700 => const BoxDecoration(
    color: ColorConstant.white,
  );
  static BoxDecoration get outlineBlue501 => BoxDecoration(
    color: ColorConstant.white,
    border: Border.all(
      color: ColorConstant.blue50,
      width: getHorizontalSize(
        1,
      ),
    ),
  );
  static BoxDecoration get fillBlue50 => BoxDecoration(
    color: ColorConstant.blue50,
  );
  static BoxDecoration get txtOutlineBlue50 => BoxDecoration(
    color: ColorConstant.white,
    border: Border.all(
      color: ColorConstant.blue50,
      width: getHorizontalSize(
        1,
      ),
    ),
  );
  static BoxDecoration get outlineBlue50 => BoxDecoration(
    border: Border.all(
      color: ColorConstant.blue50,
      width: getHorizontalSize(
        1,
      ),
    ),
  );
  static BoxDecoration get txtFillBlue50 => BoxDecoration(
    color: ColorConstant.blue50,
  );
  static BoxDecoration get txtOutlineLightblue => BoxDecoration(
    color: ColorConstant.white,
    border: Border.all(
      color: ColorConstant.lightBlue,
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

  static const BoxDecoration regularDecoration = BoxDecoration(
    color: Color.fromARGB(255, 255, 255, 255),
  );

  static BoxDecoration customRegularDecoration({
    Color color = const Color.fromARGB(255, 255, 255, 255),
  }) {
    return BoxDecoration(color: color);
  }

}
