import 'package:flutter/material.dart';
import 'main.dart';
import 'about.dart';
import 'details.dart';
import 'unknown.dart';
class GYRouter {

  static final Map<String, WidgetBuilder> routes = {
    GYHomePage.routeName : (ctx) => GYHomePage(),
    GYAbout.routeName : (ctx) => GYAbout()
  };

  static final String initialRoute = GYHomePage.routeName;

  static final RouteFactory generateRoute = (settings) {
    if (settings.name == GYDeatilsPage.routeName) {
      return MaterialPageRoute(
          builder: (ctx) {
            return GYDeatilsPage(settings.arguments as String);
          }
      );
    }
    return null;
  };

  static final RouteFactory unknownRoute = (settings) {
    return MaterialPageRoute(
        builder: (ctx) {
          return GYUnknownPage();
        }
    );
  };
}