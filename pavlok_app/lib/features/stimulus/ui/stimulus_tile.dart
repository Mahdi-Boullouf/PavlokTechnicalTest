import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pavlok_app/core/extensions/context_extension.dart';

import '../../../core/res/app_colors.dart';
import '../../../core/ui/components/stimulus_icon.dart';

class StimulusTile extends StatelessWidget {
  const StimulusTile({super.key, required this.isSelected, required this.stimulusType});
  final bool isSelected ;
  final String stimulusType;
  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading: const StimulusIcon(),
      tileColor: isSelected ? AppColors.primaryColor : Colors.white,
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none),
      contentPadding: EdgeInsets.symmetric(vertical: 7.h),
      title: Text(
        stimulusType.toUpperCase(),
        style: isSelected ?  context.textTheme.bodyMedium!
            .copyWith(color: AppColors.whiteColor) :  context.textTheme.bodyMedium,
      ),
    );
  }
}
