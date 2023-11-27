import 'package:doctor_registeration/core/routes/route.dart';
import 'package:doctor_registeration/features/login/ui/login_screen.dart';
import 'package:doctor_registeration/features/onBoarding/onBoarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No Routtes Found For ${settings.name}')),
                ));
    }
  }
}
