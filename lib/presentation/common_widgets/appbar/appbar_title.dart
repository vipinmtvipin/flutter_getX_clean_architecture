import 'package:flutter/material.dart';
import 'package:getx_clean_template_vip/core/theme/app_text_style.dart';


import '../../../core/theme/color_constant.dart';
import '../../../core/utils/size_utils.dart';


// ignore: must_be_immutable
class AppbarTitle extends StatelessWidget {
  AppbarTitle({super.key, required this.text, this.margin, this.onTap});

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
        child: Text(
          text,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppTextStyle.txtBold16.copyWith(
            letterSpacing: getHorizontalSize(
              0.5,
            ),
            color: AppColors.indigo,
          ),
        ),
      ),
    );
  }
}
