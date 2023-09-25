import 'package:abac_challenge/pages/choose_date_page/choose_date_page.dart';
import 'package:abac_challenge/pages/choose_repair_station_page/choose_repair_station_page.dart';
import 'package:abac_challenge/pages/finish_page/finish_page.dart';
import 'package:abac_challenge/pages/identify_car_page/identify_car_page.dart';
import 'package:abac_challenge/pages/welcome_page/welcome_page.dart';
import 'package:abac_challenge/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

var logger = Logger();

void main() {
  //Makes it so SystemChrome.setPreferredOrientations works
  WidgetsFlutterBinding.ensureInitialized();
  //Sets preffered orientations
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  //Runs the app on boot
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      home: const WelcomePage(),
      routes: {
        WelcomePage.routeName: (context) => const WelcomePage(),
        IdentifyCarPage.routeName: (context) => const IdentifyCarPage(),
        ChooseDatePage.routeName: (context) => const ChooseDatePage(),
        ChooseRepairStationPage.routeName: (context) =>
            const ChooseRepairStationPage(),
        FinishPage.routeName: (context) => const FinishPage(),
      },
    );
  }
}

/**
 * COMMANDS:
 * flutter pub run build_runner build --delete-conflicting-outputs
 * dart format .
 * flutter analyze
 * flutter test
 */
