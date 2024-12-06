import 'package:hive/hive.dart';

import '../app_preferences/app_preference.dart';

class PreferencesManager {
  static Future<void> initBoxes() async {
    await Hive.openBox("preferences");
  }

  static AppPreferences providePreferencesStorage() {
    final box = Hive.box("preferences");
    return AppPreferences(box: box);
  }
}
