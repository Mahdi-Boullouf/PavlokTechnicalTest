import 'package:flutter/material.dart';
import 'package:pavlok_app/core/res/app_colors.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator(color: AppColors.primaryColor,),);
  }
}
