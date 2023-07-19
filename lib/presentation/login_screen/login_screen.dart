import 'package:get/get.dart';

import '../../core/routes/app_routes.dart';
import '../../core/routes/navigation_args.dart';

import '../../core/theme/app_style.dart';
import '../../core/theme/color_constant.dart';
import '../../core/utils/common_util.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/responsive_ui.dart';
import '../../core/utils/size_utils.dart';

import '../../data/model/login/login_request.dart';
import '../common_widgets/custom_button.dart';
import '../common_widgets/custom_icon_button.dart';
import '../common_widgets/custom_image_view.dart';
import '../common_widgets/custom_text_form_field.dart';
import 'controller/login_controller.dart';
import 'package:flutter/material.dart';

class LoginScreen extends GetWidget<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.lightBlue,
        body: Responsive(
          mobile: mobileLoginView(),
          desktop: webLoginView(),
          tablet: mobileLoginView(),
        ),
      ),
    );
  }

  Widget mobileLoginView() {
    return GestureDetector(onTap: () {
      CommonUtil().keyboardHide(Get.context!);
    }, child: LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight,
            ),
            child: Container(
                //  width: double.maxFinite,
                padding: getPadding(left: 16, top: 68, right: 16),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomIconButton(
                          height: 72,
                          width: 72,
                          variant: IconButtonVariant.OutlineBlue50,
                          shape: IconButtonShape.RoundedBorder16,
                          padding: IconButtonPadding.PaddingAll20,
                          child:
                              CustomImageView(svgPath: ImageConstant.imgHome)),
                      Padding(
                          padding: getPadding(top: 16),
                          child: Text("msg_welcome".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold16.copyWith(
                                  letterSpacing: getHorizontalSize(0.5)))),
                      Padding(
                          padding: getPadding(top: 10),
                          child: Text("msg_sign_in_to_cont".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular12.copyWith(
                                  letterSpacing: getHorizontalSize(0.5)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.emailController,
                          hintText: "lbl_your_email".tr,
                          margin: getMargin(top: 28),
                          padding: TextFormFieldPadding.PaddingT14,
                          textInputType: TextInputType.emailAddress,
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 12, right: 10, bottom: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgHome)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(48))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.passwordController,
                          hintText: "lbl_password".tr,
                          margin: getMargin(top: 10),
                          padding: TextFormFieldPadding.PaddingT14,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 12, right: 10, bottom: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgAirplane)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(48)),
                          isObscureText: true),
                      CustomButton(
                          height: getVerticalSize(57),
                          text: "lbl_sign_in".tr,
                          variant: ButtonVariant.OutlineLightblue,
                          margin: getMargin(top: 16),
                          onTap: () {
                            onTapSignin();
                          }),
                      Padding(
                          padding: getPadding(top: 18),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 10, bottom: 9),
                                    child: SizedBox(
                                        width: getHorizontalSize(134),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.blue50))),
                                Text("lbl_or".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsBold14.copyWith(
                                        letterSpacing:
                                            getHorizontalSize(0.07))),
                                Padding(
                                    padding: getPadding(top: 10, bottom: 9),
                                    child: SizedBox(
                                        width: getHorizontalSize(137),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.blue50)))
                              ])),
                      Padding(
                          padding: getPadding(top: 17),
                          child: Text("msg_forgot_password".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold12.copyWith(
                                  letterSpacing: getHorizontalSize(0.5)))),
                      GestureDetector(
                          onTap: () {
                            onTapTxtDonthaveanacc();
                          },
                          child: Padding(
                              padding: getPadding(top: 7, bottom: 5),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_don_t_have_an_a".tr,
                                        style: TextStyle(
                                            color: ColorConstant.blueGray,
                                            fontSize: getFontSize(12),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                            letterSpacing:
                                                getHorizontalSize(0.5))),
                                    TextSpan(
                                        text: " ",
                                        style: TextStyle(
                                            color: ColorConstant.indigo,
                                            fontSize: getFontSize(12),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700,
                                            letterSpacing:
                                                getHorizontalSize(0.5))),
                                    TextSpan(
                                        text: "lbl_register".tr,
                                        style: TextStyle(
                                            color: ColorConstant.sky_blue,
                                            fontSize: getFontSize(12),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700,
                                            letterSpacing:
                                                getHorizontalSize(0.5)))
                                  ]),
                                  textAlign: TextAlign.left)))
                    ])),
          ),
        );
      },
    ));
  }

  Widget webLoginView() {
    return GestureDetector(
      onTap: () {
        CommonUtil().keyboardHide(Get.context!);
      },
      child: Container(
          width: double.maxFinite,
          padding: getPadding(left: 16, top: 68, right: 16),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            CustomIconButton(
                height: 72,
                width: 72,
                variant: IconButtonVariant.OutlineBlue50,
                shape: IconButtonShape.RoundedBorder16,
                padding: IconButtonPadding.PaddingAll20,
                child: CustomImageView(svgPath: ImageConstant.imgHome)),
            Padding(
                padding: getPadding(top: 16),
                child: Text("msg_welcome".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsBold16
                        .copyWith(letterSpacing: getHorizontalSize(0.5)))),
            Padding(
                padding: getPadding(top: 10),
                child: Text("msg_sign_in_to_cont".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular12
                        .copyWith(letterSpacing: getHorizontalSize(0.5)))),
            CustomTextFormField(
                focusNode: FocusNode(),
                controller: controller.emailController,
                hintText: "lbl_your_email".tr,
                margin: getMargin(top: 28),
                padding: TextFormFieldPadding.PaddingT14,
                textInputType: TextInputType.emailAddress,
                prefix: Container(
                    margin: getMargin(left: 16, top: 12, right: 10, bottom: 12),
                    child: CustomImageView(svgPath: ImageConstant.imgHome)),
                prefixConstraints:
                    BoxConstraints(maxHeight: getVerticalSize(48))),
            CustomTextFormField(
                focusNode: FocusNode(),
                controller: controller.passwordController,
                hintText: "lbl_password".tr,
                margin: getMargin(top: 10),
                padding: TextFormFieldPadding.PaddingT14,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.visiblePassword,
                prefix: Container(
                    margin: getMargin(left: 16, top: 12, right: 10, bottom: 12),
                    child: CustomImageView(svgPath: ImageConstant.imgAirplane)),
                prefixConstraints:
                    BoxConstraints(maxHeight: getVerticalSize(48)),
                isObscureText: true),
            CustomButton(
                height: getVerticalSize(57),
                text: "lbl_sign_in".tr,
                margin: getMargin(top: 16),
                onTap: () {
                  onTapSignin();
                }),
            Padding(
                padding: getPadding(top: 18),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: getPadding(top: 10, bottom: 9),
                          child: SizedBox(
                              width: getHorizontalSize(134),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: ColorConstant.blue50))),
                      Text("lbl_or".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsBold14.copyWith(
                              letterSpacing: getHorizontalSize(0.07))),
                      Padding(
                          padding: getPadding(top: 10, bottom: 9),
                          child: SizedBox(
                              width: getHorizontalSize(137),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: ColorConstant.blue50)))
                    ])),
            Padding(
                padding: getPadding(top: 17),
                child: Text("msg_forgot_password".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsBold12
                        .copyWith(letterSpacing: getHorizontalSize(0.5)))),
            GestureDetector(
                onTap: () {
                  onTapTxtDonthaveanacc();
                },
                child: Padding(
                    padding: getPadding(top: 7, bottom: 5),
                    child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "msg_don_t_have_an_a".tr,
                              style: TextStyle(
                                  color: ColorConstant.blueGray,
                                  fontSize: getFontSize(12),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: getHorizontalSize(0.5))),
                          TextSpan(
                              text: " ",
                              style: TextStyle(
                                  color: ColorConstant.indigo,
                                  fontSize: getFontSize(12),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: getHorizontalSize(0.5))),
                          TextSpan(
                              text: "lbl_register".tr,
                              style: TextStyle(
                                  color: ColorConstant.lightBlue,
                                  fontSize: getFontSize(12),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: getHorizontalSize(0.5)))
                        ]),
                        textAlign: TextAlign.left)))
          ])),
    );
  }

  void onTapSignin() {
    controller.callLogin();
  }

  onTapTxtDonthaveanacc() {
    controller.showSnackBar(
        "Sign up", "Clicked for registration", ColorConstant.light_gray);
  }
}
