import 'package:flutter/material.dart';
import '../presentation/get_started_screen/get_started_screen.dart';
import '../presentation/home_screen/home_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String getStartedScreen = '/get_started_screen';

  static const String homeScreen = '/home_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        getStartedScreen: GetStartedScreen.builder,
        homeScreen: HomeScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: GetStartedScreen.builder
      };
}
