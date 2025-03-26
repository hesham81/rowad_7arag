import 'package:flutter/material.dart';
import '/core/route/on_generate_route.dart';
import '/core/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      navigatorKey: navigationKey,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: OnGenerateRoute.route,
    );
  }
}

var navigationKey = GlobalKey<NavigatorState>();
