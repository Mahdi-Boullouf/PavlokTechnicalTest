import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pavlok_app/core/res/app_colors.dart';
import 'package:pavlok_app/core/res/app_strings.dart';

ThemeData appTheme() {
  return ThemeData(
      useMaterial3: true,
      filledButtonTheme: FilledButtonThemeData(
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(AppColors.primaryColor),
              padding: MaterialStatePropertyAll(
                  EdgeInsets.symmetric(vertical: 18.h)),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))))),
      fontFamily: AppStrings.appFont,
      inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(
              fontSize: 12.sp,
              color: AppColors.secondaryTextColor,
              fontWeight: FontWeight.w600),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none),
          filled: true,
          fillColor: AppColors.containerColor),
      textTheme: TextTheme(
          titleLarge: TextStyle(
              fontSize: 18.sp,
              color: AppColors.textColor,
              fontWeight: FontWeight.w600),
          titleMedium: TextStyle(
              fontSize: 16.sp,
              color: AppColors.textColor,
              fontWeight: FontWeight.w600),
          bodyMedium: TextStyle(
              fontSize: 14.sp,
              color: AppColors.textColor,
              fontWeight: FontWeight.w600),
          bodySmall: TextStyle(
              fontSize: 12.sp,
              color: AppColors.textColor,
              fontWeight: FontWeight.w600)),
      colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor));
}
