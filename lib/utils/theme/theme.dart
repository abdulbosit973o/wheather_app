import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wheather_app/utils/theme/app_text_styles.dart';

import 'colors.dart';

class AppThemes {
  static final lightTheme = ThemeData(
    useMaterial3: true,
    primaryColor: AppColors.backgroundLight,
    textTheme: const TextTheme(),
    fontFamily: 'Poppinsregular',
    scaffoldBackgroundColor: AppColors.backgroundLight,
    dialogTheme: const DialogTheme(backgroundColor: AppColors.background),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.backgroundLight,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      iconTheme: const IconThemeData(color: AppColors.black),
      centerTitle: true,
      elevation: 0,
      titleTextStyle: sfmedium.copyWith(
        color: AppColors.black,
        fontSize: 16,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      elevation: 12,
      selectedItemColor: Colors.orangeAccent,
      unselectedItemColor: Colors.grey,
    ),
  );

  static final darkTheme = ThemeData(
    useMaterial3: true,
    primaryColor: AppColors.backgroundDark,
    fontFamily: 'Poppinsregular',
    brightness: Brightness.dark,
    dialogTheme: const DialogTheme(backgroundColor: AppColors.backgroundDark),
    scaffoldBackgroundColor: AppColors.backgroundDark,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.backgroundDark,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      iconTheme: const IconThemeData(color: AppColors.white),
      centerTitle: true,
      elevation: 0,
      titleTextStyle: sfregular.copyWith(
        color: AppColors.white,
        fontSize: 16,
      ),
    ),
  );
}
