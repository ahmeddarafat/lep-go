import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'package:sizer/sizer.dart';
import 'app_fonts.dart';

class AppStyle {
  static TextStyle headline = getBold(color: AppColors.black, fontSize: 20.sp);
  static TextStyle headlineOrange =
      getBold(color: AppColors.orange, fontSize: 18.sp);
  static TextStyle title = getBold(color: AppColors.grey3b, fontSize: 18.sp);
  static TextStyle bodyTitle =
      getMedium(color: AppColors.gray66, fontSize: 14.sp);
  static TextStyle bodySubTitle =
      getMedium(color: AppColors.black, fontSize: 12.sp);
  static TextStyle subTitle =
      getRegular(color: AppColors.gray66, fontSize: 14.sp);
  static TextStyle textButton =
      getRegular(color: AppColors.orange, fontSize: 14.sp);
  static TextStyle chatText = getRegular(color: AppColors.grey3b, fontSize: 11.sp);

  //* light
  static TextStyle getLight({
    required Color color,
    double fontSize = AppFontSize.f12,
  }) {
    return _getTextStyle(color, fontSize, AppFontWeight.light);
  }

  //* Regular
  static TextStyle getRegular({
    required Color color,
    double fontSize = AppFontSize.f12,
  }) {
    return _getTextStyle(color, fontSize, AppFontWeight.regular);
  }

  //* Medium
  static TextStyle getMedium({
    required Color color,
    double fontSize = AppFontSize.f12,
  }) {
    return _getTextStyle(color, fontSize, AppFontWeight.medium);
  }

  //* SemiBold
  static TextStyle getSemiBold({
    required Color color,
    double fontSize = AppFontSize.f12,
  }) {
    return _getTextStyle(color, fontSize, AppFontWeight.semiBold);
  }

  //* Bold
  static TextStyle getBold({
    required Color color,
    double fontSize = AppFontSize.f12,
  }) {
    return _getTextStyle(color, fontSize, AppFontWeight.bold);
  }

  //* base method
  static TextStyle _getTextStyle(
      Color color, double fontSize, FontWeight fontWeight) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontFamily: AppFontFamily.montserrat,
      fontWeight: fontWeight,
    );
  }
}
