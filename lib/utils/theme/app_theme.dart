import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wheather_app/utils/theme/app_text_styles.dart';

import 'colors.dart';

class AppTheme {
  static ThemeData get theme {
    ThemeData base = ThemeData.light();
    return base.copyWith(
      scaffoldBackgroundColor: AppColors.backgroundLight,
      cardColor: Colors.white,
      textTheme: base.textTheme.copyWith(
        bodySmall: base.textTheme.bodyMedium!.copyWith(
          color: AppColors.black,
        ),
      ),
      primaryColor: AppColors.primary,
      brightness: Brightness.light,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        elevation: 12,
        selectedItemColor: Colors.orangeAccent,
        unselectedItemColor: Colors.grey,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.backgroundLight,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        iconTheme: const IconThemeData(color: AppColors.black),
        centerTitle: true,
        elevation: 0,
        titleTextStyle: sfmedium.copyWith(
          color: AppColors.black,
          fontSize: 18,
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    ThemeData base = ThemeData.dark();
    return base.copyWith(
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.backgroundDark,
      cardColor: Colors.black,
      textTheme: base.textTheme.copyWith(
        bodySmall: base.textTheme.bodyMedium!.copyWith(
          color: AppColors.white,
        ),
      ),
      brightness: Brightness.dark,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.black,
        elevation: 12,
        selectedItemColor: Colors.orangeAccent,
        unselectedItemColor: Colors.grey,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Color(0xff393E46),
        systemOverlayStyle: SystemUiOverlayStyle.light,
        iconTheme: const IconThemeData(color: AppColors.white),
        centerTitle: true,
        elevation: 0,
        titleTextStyle: sfregular.copyWith(
          color: AppColors.white,
          fontSize: 18,
        ),
      ),
    );
  }
}
