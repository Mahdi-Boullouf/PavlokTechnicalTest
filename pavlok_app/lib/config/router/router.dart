import 'package:flutter/material.dart';
import 'package:pavlok_app/config/router/routes.dart';
import 'package:pavlok_app/features/auth/ui/restore_password_screen.dart';
import 'package:pavlok_app/features/auth/ui/sign_in_screen.dart';
import 'package:pavlok_app/features/home/ui/home_screen.dart';
import 'package:pavlok_app/features/stimulus/ui/send_stimulus_screen.dart';
import 'package:pavlok_app/features/stimulus/ui/stimulus_screen.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.login:
        return MaterialPageRoute(
          builder: (context) =>  SignInScreen(),
        );


      case AppRoutes.home:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
      case AppRoutes.stimulus:
        return MaterialPageRoute(
          builder: (context) => AllStimulusScreen(),
        );

      case AppRoutes.sendStimulus:
        return MaterialPageRoute(
          builder: (context) => SendStimulusScreen(),
        );

      case AppRoutes.restorePassword:
        return MaterialPageRoute(
          builder: (context) => RestorePasswordScreen(),
        );
    }
    return null;
  }
}
