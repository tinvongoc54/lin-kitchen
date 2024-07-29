import 'package:flutter/material.dart';
import 'package:lin_kitchen/router/route_page.dart';
import 'package:lin_kitchen/ui/auth/sign_up/sign_up_screen.dart';
import 'package:lin_kitchen/ui/welcome/welcome_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // get argument bundle that was attached
    final arguments = settings.arguments;

    // return MaterialPageRoute(builder: (_) => Container(color: Colors.red,), settings: settings);

    // use switch case to determine the requested route.
    switch (settings.name) {
      case SPLASH:
        return MaterialPageRoute(
          builder: (_) => Container(),
          settings: settings,
        );
      case WELCOME:
        return MaterialPageRoute(
          builder: (_) => const WelcomeScreen(),
          settings: settings,
        );
      case SIGN_UP:
        return MaterialPageRoute(
          builder: (_) => const SignUpScreen(),
          settings: settings,
        );
      case MAIN_TAB_BAR:
        return MaterialPageRoute(
          builder: (_) => Container(),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const WelcomeScreen(),
          settings: settings,
        );
    }
  }
}
