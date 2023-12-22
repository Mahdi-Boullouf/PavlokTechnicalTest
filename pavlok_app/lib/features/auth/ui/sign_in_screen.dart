import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pavlok_app/config/router/routes.dart';
import 'package:pavlok_app/core/extensions/context_extension.dart';
import 'package:pavlok_app/core/res/app_strings.dart';
import 'package:pavlok_app/core/utils/validators.dart';
import 'package:pavlok_app/features/auth/cubit/auth_cubit.dart';
import 'package:pavlok_app/features/auth/cubit/auth_cubit.dart';
import 'package:pavlok_app/features/auth/repository/user_repository.dart';
import 'package:pavlok_app/main.dart';

import '../../../core/ui/input/input_field.dart';
import '../../../core/utils/utils.dart';
import '../models/user.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

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
                Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Email Address',
                        style: context.textTheme.bodySmall,

                      ),
                      8.verticalSpace,
                      InputField.email(controller: emailController,
                        hintTex: 'john.doe@gmail.com',),
                      8.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Password',
                            style: context.textTheme.bodySmall,
                          ),
                          GestureDetector(
                            onTap: () => Navigator.of(context).pushNamed(AppRoutes.restorePassword),
                            child: Text(
                              'Forgot Password ?',
                              style: context.textTheme.bodySmall!.copyWith(decoration: TextDecoration.underline),
                            
                            ),
                          ),
                        ],
                      ),
                      8.verticalSpace,
                      InputField.password(controller: passwordController,
                        hintTex: '*************',)

                    ],
                  ),
                ),

                22.verticalSpace,

                BlocConsumer<AuthCubit, AuthState>(

                  listener: (context, state) {
                    if(state is AuthSucced){
                      user = state.user;
                      print(state.user.token);
                      Navigator.of(context).pushReplacementNamed(AppRoutes.home);
                    }
if(state is AuthError){
  Utils.showFlushBar(context, state.errorMessage);
                    }
                  },
                  builder: (context, state) {
                    if(state is AuthLoading){
                      return const FilledButton(onPressed: null, child: CircularProgressIndicator(color: Colors.white,));
                    }
                    return FilledButton(
                        onPressed: () async {
                          if(formKey.currentState!.validate()){
                            context.closeKeyboard();
                            context.read<AuthCubit>().signInWithEmailAndPassword(emailController.text, passwordController.text);


                          }
                        }
                        ,
                        child: const Text(
                          'Sign In',
                          style: TextStyle(color: Colors.white),
                        ));
                  },
                ),
                16.verticalSpace,

              ],
            )),
      ),
    );
  }
}

