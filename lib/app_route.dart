import 'package:flutter/material.dart';

import 'shared/shared.dart';
import 'ui/ui.dart';

class AppRoute {
  AppRoute();
  Route? generateRoute(RouteSettings pageRoute) {
    switch (pageRoute.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => const SettingPageOptional());
      case settingPagePath:
        return MaterialPageRoute(builder: (_) => const SettingPageOptional());
      case deleteAccountPagePath:
        return MaterialPageRoute(builder: (_) => const DeleteAccountPage());
      case deleteReasonPagePath:
        return MaterialPageRoute(builder: (_) => const ReasonPageOptional());
      case askEnsurementPagePath:
        return MaterialPageRoute(builder: (_) => const EnsurementPage());
      default:
        return null;
    }
  }
}
