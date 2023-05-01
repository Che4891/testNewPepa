import 'package:flutter/material.dart';
import 'app_colors.dart';

const mainColor = Color.fromRGBO(41, 63, 230, 1),
    blackColor = Color.fromRGBO(0, 51, 81, 1),
    greyColor = Color.fromRGBO(235, 243, 245, 1),
    alertColor = Color.fromRGBO(232, 72, 101, 1),
    darkGreyColor = Color.fromRGBO(143, 173, 191, 1);

// Buttons Style
abstract class AppButtonStyle {
  static TextButtonThemeData textButton = TextButtonThemeData(
    style: TextButton.styleFrom(
      textStyle: TextStyle(fontSize: 16, color: AppColors.mainColor),
      foregroundColor: AppColors.mainColor,
      padding: EdgeInsets.zero,
      minimumSize: Size(50, 20),
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    ),
  );
  static ElevatedButtonThemeData classicButton = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    backgroundColor: AppColors.mainColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
    textStyle: TextStyle(fontSize: 18, color: AppColors.mainColor),
  ));
}

// Input Style

abstract class AppInputStyle {
  static InputDecorationTheme inputStyle = InputDecorationTheme(
    isDense: true,
    contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 11),
    fillColor: AppColors.whiteColor,
    labelStyle: TextStyle(color: AppColors.darkGreyColor, fontSize: 16),
    floatingLabelStyle: TextStyle(color: AppColors.mainColor, fontSize: 16),
    errorStyle: TextStyle(
      
    ),
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: AppColors.darkGreyColor),
        borderRadius: BorderRadius.circular(10.0)),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: AppColors.mainColor),
        borderRadius: BorderRadius.circular(10.0)),
    errorBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: AppColors.alertColor),
        borderRadius: BorderRadius.circular(10.0)),
    focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: AppColors.alertColor),
        borderRadius: BorderRadius.circular(10.0)),
  );
}
