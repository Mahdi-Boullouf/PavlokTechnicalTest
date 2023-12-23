
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pavlok_app/config/router/routes.dart';
import 'package:pavlok_app/core/extensions/context_extension.dart';
import 'package:pavlok_app/core/res/app_colors.dart';
import 'package:pavlok_app/core/ui/components/loading_widget.dart';
import 'package:pavlok_app/features/auth/cubit/restore_password_cubit.dart';
import 'package:pavlok_app/features/auth/repository/user_repository.dart';

import 'package:pavlok_app/core/utils/utils.dart';
import '../../../core/ui/input/input_field.dart';

class RestorePasswordScreen extends StatelessWidget {
   RestorePasswordScreen({super.key});

 static final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => RestorePasswordCubit(UserRepository()),
  child: Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(

        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.w),
          child: BlocConsumer<RestorePasswordCubit,RestorePasswordState>(
             listener:(context, state){
                if(state is RestorePasswordError){
                   Utils.showFlushbar(context,state.errorMessage);
                }
             },
             builder: (context, state){

            if(state is RestorePasswordEmailSentSuccess){
              return resetPasswordEmailSentWidgets(context);
            }
            else if(state is RestorePasswordLoading){
              return const LoadingWidget();
            }
            return restorePasswordWidgets(context);
          },)
        ),),),
);
  }
  Widget resetPasswordEmailSentWidgets(BuildContext context){
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('We\'ve sent you an email. ',style: context.textTheme.titleLarge,),
          8.verticalSpace,
          Text('Please check your inbox .',style: context.textTheme.bodyMedium!.copyWith(color: AppColors.secondaryTextColor),),
          32.verticalSpace,

          GestureDetector(onTap: () => Navigator.of(context).pushReplacementNamed(AppRoutes.login),child: Text('Back to sign in',style: context.textTheme.bodyMedium!.copyWith(decoration: TextDecoration.underline),))

        ],),
    );
  }
  Widget restorePasswordWidgets(BuildContext context){
    return Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Did you forget your Password ?',style: context.textTheme.titleLarge,),
        8.verticalSpace,
        Text('Let us help you restore it .',style: context.textTheme.bodyMedium!.copyWith(color: AppColors.secondaryTextColor),),
        22.verticalSpace,
        Form(key: formKey,child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InputField.email(controller: emailController,),
            22.verticalSpace,
            FilledButton(onPressed: (){
              if(formKey.currentState!.validate()){
                context.read<RestorePasswordCubit>().sentRestorePasswordEmail(emailController.text);
              }
}, child: const Text('Continue')),
          ],))

      ],);
  }
}
