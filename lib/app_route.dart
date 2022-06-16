import 'package:flutter/material.dart';
import 'package:setting_and_component/ui/ui.dart';

class AppRoute {
  AppRoute();
  Route? generateRoute(RouteSettings pageRoute) {
    switch (pageRoute.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => const DeleteAccountPage());
      default:
        return null;
    }
  }
}
