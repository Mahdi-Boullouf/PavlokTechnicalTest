import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pavlok_app/core/res/app_colors.dart';

class Utils{
  static showFlushBar (BuildContext context, String message){
    Flushbar(duration: Duration(seconds: 2),message: message,margin: EdgeInsets.symmetric(horizontal: 16.w,vertical: 22.h),backgroundColor: AppColors.primaryColor,borderRadius: BorderRadius.circular(12),icon: const Icon(Icons.info_outline,color: Colors.white,),).show(context);
  }
}