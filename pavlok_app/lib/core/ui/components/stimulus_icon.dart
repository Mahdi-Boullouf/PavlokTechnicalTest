import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../res/app_colors.dart';

class StimulusIcon extends StatelessWidget {
  const StimulusIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.primaryColor,
      ),
      child: Icon(
        Icons.hearing,
        color: AppColors.whiteColor,
      ),
      padding: EdgeInsets.all(14.w),
    );
  }
}
