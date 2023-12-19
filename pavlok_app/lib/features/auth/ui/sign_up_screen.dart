import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pavlok_app/config/router/routes.dart';
import 'package:pavlok_app/core/extensions/context_extension.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Image.asset(name),
                140.verticalSpace,
                Text(
                  'Sign Up',
                  style: context.textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
                80.verticalSpace,

                Text(
                  'Email Address',
                  style: context.textTheme.bodySmall,
                ),
                8.verticalSpace,
                TextField(
                  decoration: InputDecoration(hintText: 'john.doe@example.com'),
                ),
                8.verticalSpace,

                Text(
                  'Password',
                  style: context.textTheme.bodySmall,
                ),
                8.verticalSpace,
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(hintText: '********'),
                ),
                22.verticalSpace,
                Text(
                  'Re-type password',
                  style: context.textTheme.bodySmall,
                ),

                8.verticalSpace,
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(hintText: '********'),
                ),
                22.verticalSpace,
                FilledButton(
                    onPressed: () {},
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.white),
                    )),
                16.verticalSpace,
                GestureDetector(
                  onTap: () => Navigator.pushNamedAndRemoveUntil(
                      context, AppRoutes.login, (route) => false),
                  child: Text(
                    'Already have an account ?',
                    style: context.textTheme.bodySmall,
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            )),
      ),
    );
  }
}
