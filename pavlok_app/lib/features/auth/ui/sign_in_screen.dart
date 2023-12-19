import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pavlok_app/config/router/routes.dart';
import 'package:pavlok_app/core/extensions/context_extension.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

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
                  'Sign In',
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

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Password',
                      style: context.textTheme.bodySmall,
                    ),
                    Text(
                      'Forgot Password ?',
                      style: context.textTheme.bodySmall,
                    ),
                  ],
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
                      'Sign In',
                      style: TextStyle(color: Colors.white),
                    )),
                16.verticalSpace,
                GestureDetector(
                  onTap: () =>
                      Navigator.of(context).pushNamed(AppRoutes.register),
                  child: Text(
                    'Sign up',
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
