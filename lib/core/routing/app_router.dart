import 'package:flutter/material.dart';
import 'package:file_manager/core/routing/routes.dart';
import 'package:file_manager/feature/home/home_screen_state.dart';

class AppRouter {


  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreenState());
      default:
        return null;
    }
  }
}
