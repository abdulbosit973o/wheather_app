import 'package:get_it/get_it.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:wheather_app/utils/app/preferences_manager.dart';

import '../app_preferences/app_preference.dart';
import '../app_preferences/shared_pref.dart';

final serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  await SharePref().init();
  await Hive.initFlutter();
  await PreferencesManager.initBoxes();

  serviceLocator.registerSingleton<AppPreferences>(
      PreferencesManager.providePreferencesStorage());

  serviceLocator.registerSingleton<SharePref>(SharePref());
}

final sharedPref = serviceLocator.get<SharePref>();
