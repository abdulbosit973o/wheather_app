import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wheather_app/presentation/screens/home/home_screen.dart';
import 'package:wheather_app/utils/app/app_initializer.dart';
import 'package:wheather_app/utils/app_preferences/app_preference.dart';
import 'package:wheather_app/utils/extensions/extensions.dart';
import 'package:wheather_app/utils/theme/app_theme.dart';
import 'package:wheather_app/utils/translations/app_translation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await initDependencies();
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  final preferences = inject<AppPreferences>();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: preferences.themeListenable(),
      builder: (context, value, child) {
        return ScreenUtilInit(
            useInheritedMediaQuery: false,
            designSize: const Size(375, 812),
            builder: (context, child) {
              return GetMaterialApp(
                title: 'Interview Task for Dynamic Soft',
                debugShowCheckedModeBanner: false,
                themeMode: ThemeMode.dark,
                theme: AppTheme.theme,
                darkTheme: AppTheme.darkTheme,
                fallbackLocale: const Locale('en', 'EN'),
                locale: Locale(preferences.lang ?? 'en'),
                translations: AppTranslation(),
                builder: (context, child) {
                  return MediaQuery(
                    data: MediaQuery.of(context).copyWith(
                      textScaler: const TextScaler.linear(1.0),
                    ),
                    child: child ?? Container(),
                  );
                },
                home: const HomeScreen(),
              );
            });
      },
    );
  }
}
