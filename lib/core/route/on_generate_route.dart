import 'package:flutter/material.dart';
import '/modules/sign_in/pages/sign_in.dart';
import '/core/route/route_names.dart';

abstract class OnGenerateRoute {
  static Route route(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.splashScreen:
        return MaterialPageRoute(
          builder: (context) => SignIn(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => SignIn(),
        );
    }
  }
}
