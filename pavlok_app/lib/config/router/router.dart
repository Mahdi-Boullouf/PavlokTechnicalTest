import 'package:flutter/material.dart';
import 'package:pavlok_app/config/router/routes.dart';
import 'package:pavlok_app/features/auth/ui/sign_in_screen.dart';
import 'package:pavlok_app/features/auth/ui/sign_up_screen.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.login:
        return MaterialPageRoute(
          builder: (context) => const SignInScreen(),
        );

      case AppRoutes.register:
        return MaterialPageRoute(
          builder: (context) => const SignUpScreen(),
        );
    }
    return null;
  }
}
