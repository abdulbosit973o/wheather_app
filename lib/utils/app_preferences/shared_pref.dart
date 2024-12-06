import 'dart:io';

import 'package:shared_preferences/shared_preferences.dart';

class SharePref {
  SharedPreferences? _sharedPreferences;

  static String selectedLanguage = Platform.localeName.split('_')[0];

  Future<SharePref> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }

  Future saveString(String key, String? value) async {
    await _sharedPreferences?.setString(key, value ?? "");
  }

  String? getString(String key) {
    return _sharedPreferences?.getString(key);
  }

  Future saveDouble(String key, double? value) async {
    await _sharedPreferences?.setDouble(key, value ?? 0);
  }

  double? getDouble(String key) {
    return _sharedPreferences?.getDouble(key);
  }

  Future saveBool(String key, bool? value) async {
    await _sharedPreferences?.setBool(key, value ?? false);
  }

  bool? getBool(String key) {
    return _sharedPreferences?.getBool(key);
  }

  Future saveInt(String key, int? value) async {
    return await _sharedPreferences?.setInt(key, value ?? -1);
  }

  int? getInt(String key) {
    return _sharedPreferences?.getInt(key);
  }

  Future clear() async {
    return await _sharedPreferences?.clear();
  }
}
