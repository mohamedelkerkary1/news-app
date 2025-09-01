import 'package:flutter/material.dart';
import 'package:newsapp/core/routes/app_routes.dart';
import 'package:newsapp/core/routes/page_routes.dart';
import 'package:newsapp/core/theme_manager/app_theme_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemeManager.lightTheme,
      initialRoute: PageRoutesName.splash,
      onGenerateRoute: AppRoutes.generateRoute,
      debugShowCheckedModeBanner: false,

    );
  }
}
