import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pavlok_app/core/extensions/context_extension.dart';
import 'package:pavlok_app/core/res/app_colors.dart';
import 'package:pavlok_app/core/ui/components/stimulus_icon.dart';

class SendStimulusScreen extends StatefulWidget {
  const SendStimulusScreen({super.key});

  @override
  State<SendStimulusScreen> createState() => _SendStimulusScreenState();
}

class _SendStimulusScreenState extends State<SendStimulusScreen> {
  int selectedOption = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: AppColors.whiteColor,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        child: FilledButton(onPressed: () {}, child: Text('Send')),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Select Stimulus',
          style: context.textTheme.bodyMedium,
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
              leading: StimulusIcon(),
              tileColor: AppColors.primaryColor,
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none),
              contentPadding: EdgeInsets.symmetric(vertical: 7.h),
              title: Text(
                'Beep',
                style: context.textTheme.bodyMedium!
                    .copyWith(color: AppColors.whiteColor),
              ),
            ),
            8.verticalSpace,
            ListTile(
              leading: StimulusIcon(),
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none),
              contentPadding: EdgeInsets.symmetric(vertical: 7.h),
              title: Text('Zap', style: context.textTheme.bodyMedium),
            ),
            8.verticalSpace,
            ListTile(
              leading: StimulusIcon(),
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none),
              contentPadding: EdgeInsets.symmetric(vertical: 7.h),
              title: Text('Vibe', style: context.textTheme.bodyMedium),
            ),
          ],
        ),
      )),
    );
  }
}
