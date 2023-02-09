import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_colors.dart';
import 'app_fonts.dart';
import 'app_style.dart';

class AppTheme {
  static ThemeData getLight() {
    return ThemeData(
      //* main colors
      primaryColor: AppColors.orange,
      splashColor: AppColors.orange,
      scaffoldBackgroundColor: AppColors.white,

      //* AppBar theme
      appBarTheme: AppBarTheme(
        iconTheme: const IconThemeData(color: AppColors.orange),
        centerTitle: true,
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.orange,
        elevation: 0,
        titleTextStyle: AppStyle.getRegular(
          color: AppColors.orange,
          fontSize: AppFontSize.f16,
        ),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: AppColors.white,
        ),
      ),

      //* text theme
      textTheme: TextTheme(
        // base headline
        headlineSmall: AppStyle.getBold(
          color: AppColors.black,
          fontSize: AppFontSize.f24,
        ),
        // text of buttons
        titleLarge: AppStyle.getBold(
          color: AppColors.white,
          fontSize: AppFontSize.f18,
        ),
        titleMedium: AppStyle.getBold(
          color: AppColors.grey3b,
          fontSize: AppFontSize.f16,
        ),
        // base title
        titleSmall: AppStyle.getMedium(
          color: AppColors.lightGray,
          fontSize: AppFontSize.f14,
        ),
        labelLarge: AppStyle.getRegular(
          color: AppColors.orange,
          fontSize: AppFontSize.f14,
        ),
        labelMedium: AppStyle.getRegular(
          color: AppColors.lightGray,
          fontSize: AppFontSize.f12,
        ),
        bodyLarge: AppStyle.getRegular(
          color: AppColors.black,
          fontSize: AppFontSize.f18,
        ),
        bodyMedium: AppStyle.getRegular(
          color: AppColors.red,
          fontSize: AppFontSize.f16,
        ),
        
      ),
    );
  }
}
