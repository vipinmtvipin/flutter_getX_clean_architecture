import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {

  static const mainColor = Color(0xFF519841);
  static const secondaryColor = Color(0xFF519841);
  static const secondaryLight = Color(0xffaed036);
  static const accentColor = Color(0xffad8447);
  static const accentColorlight = Color(0xff9a8462);

  static const light_font=  Color(0xff2a2f34);
  static const font_color=  Color(0xff484646);

  static const app_green = Color(0xff206825);
  static const light_green=  Color(0xffaed036);
  static const tiny_green=  Color(0xffc9db93);

  static const dark_gray = Color(0xff58595b);
  static const light_gray=  Color(0xff808184);
  static const tiny_gray=  Color(0xffbbbdbf);
  static const white_gray=  Color(0xffe6e7e8);
  static const gray= Colors.grey;

  static const shimmer_base= Color(0xffD6D6D6);
  static const shimmer_gihlite= Color(0xff616161);

  static const white= Color(0xffffffff);
  static const homecard_bg= Color(0xffF9F9F9);
  static const home_bg= Color(0xffF9F9f8);

  static const black= Colors.black;
  static const sky_blue= Color(0xFF42A5F5);
  static const orange= Color(0xFFD56217);
  static const green= Colors.green;
  static const red= Colors.redAccent;
  static const yellow= Colors.yellow;

  static const transparent= Color(0x00000000);
  static const transparent1= Color(0xAFFFFFF);

  static Color blueGray = fromHex('#9098b1');

  static Color lightBlue75 = fromHex('#40bfff');


  static Color lightBlue15 = fromHex('#3d40bfff');

  static Color blue50 = fromHex('#eaefff');


  static Color white_light = fromHex('#87ffffff');

  static Color lightBlue = fromHex('#1940bfff');
  static Color indigo = fromHex('#223263');

  static Color pink = fromHex('#fb7181');


  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
