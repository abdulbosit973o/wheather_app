import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';

import '../app_preferences/app_preference.dart';

T inject<T extends Object>() => GetIt.I.get<T>();

Future<T> injectAsync<T extends Object>() async => GetIt.I.getAsync<T>();

extension ContextExtensions on BuildContext {
  Size get screenSize => MediaQuery.of(this).size;

  bool get isDarkThemeMode {
    final appTheme = inject<AppPreferences>().theme;
    return appTheme == ThemeMode.dark;
  }
}

extension AssetExtension on String {
  String get pngIcon => 'assets/images/$this.png';

  String get svgIcon => 'assets/icons/$this.svg';
}

String convertDate2(String inputDate) {
  DateTime date = DateTime.parse(inputDate);
  DateFormat formatter = DateFormat('dd MMMM');
  String formattedDate = formatter.format(date);
  return formattedDate;
}

String convertDate3(String inputDate) {
  DateTime date = DateTime.parse(inputDate);
  DateFormat formatter = DateFormat('MMMM');
  String formattedDate = formatter.format(date);
  return formattedDate;
}
