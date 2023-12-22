import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pavlok_app/config/router/router.dart';
import 'package:pavlok_app/config/router/routes.dart';
import 'package:pavlok_app/config/themes/theme.dart';
import 'package:pavlok_app/main.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(392, 816),
      builder: (context, child) => MaterialApp(
        theme: appTheme(),
        title: 'Pavlok app',
        initialRoute:AppRoutes.login,
        onGenerateRoute: AppRouter.onGenerateRoute,
      ),
    );
  }
}
