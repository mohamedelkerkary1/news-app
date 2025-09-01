import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/core/routes/page_routes.dart';
import 'package:newsapp/modules/home/pages/home_view.dart';
import 'package:newsapp/modules/splash/splashScreen.dart';

abstract class AppRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case PageRoutesName.splash:
        return MaterialPageRoute(builder: (_) => Splashscreen());

      case PageRoutesName.home:
        return MaterialPageRoute(builder: (_) => HomeView());


      default:
        return MaterialPageRoute(builder: (_) => Splashscreen());
    }
  }
}
