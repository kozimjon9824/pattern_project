import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_colors.dart';

final appThemeData = ThemeData(
  colorScheme:
      ColorScheme.fromSwatch().copyWith(secondary: AppColors.primaryColor),
  appBarTheme: const AppBarTheme(
    elevation: 0,
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(color: Colors.black),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
    centerTitle: false,
    // titleTextStyle: AppTextStyles.styleW700S18Grey9
  ),
  fontFamily: "Gilroy",
  backgroundColor: AppColors.backgroundColor,
  scaffoldBackgroundColor: AppColors.backgroundColor,
  cupertinoOverrideTheme: const CupertinoThemeData(brightness: Brightness.dark),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  primarySwatch: Colors.red,
  primaryColor: AppColors.primaryColor,
  pageTransitionsTheme: const PageTransitionsTheme(builders: {
    TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
  }),
);
