import 'package:flutter/material.dart';
import 'package:sales_power/theme/app_colors.dart';
import 'package:sales_power/theme/app_ui_style.dart';
import 'package:sales_power/widgets/auth_widget.dart';
import 'package:sales_power/widgets/main_widget.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'sales_power',
      routes: {
        '/main': (context) => const MainWidget(),
        '/auth': (context) => const AuthWidget(),
      },
      initialRoute: '/main',
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
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: AppColors.mainColor,
          unselectedItemColor: AppColors.whiteColor,
          selectedItemColor: AppColors.selectGrey,

        )
      ),
    );
  }
}
