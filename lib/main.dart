import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/app_colors.dart';
import 'package:flutter_application_1/theme/app_ui_style.dart';
import 'package:flutter_application_1/widgets/auth_widget.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SalesPower',
      theme: ThemeData(
        fontFamily: 'Roboto',
        primaryColor: AppColors.mainColor,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: AppColors.blackColor,
              displayColor: AppColors.blackColor,
            ),
        scaffoldBackgroundColor: AppColors.greyColor,
        appBarTheme: AppBarTheme(backgroundColor: AppColors.mainColor),
        inputDecorationTheme: AppInputStyle.inputStyle,
        textButtonTheme: AppButtonStyle.textButton,
        elevatedButtonTheme: AppButtonStyle.classicButton,
      ),
      home: AuthWidget(),
    );
  }
}


