import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pavlok_app/core/extensions/context_extension.dart';
import 'package:pavlok_app/core/res/app_colors.dart';
import 'package:pavlok_app/core/ui/components/stimulus_history_card.dart';

import '../../../config/router/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            46.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Good day Jim ,',
                      style: context.textTheme.bodySmall!
                          .copyWith(color: AppColors.secondaryTextColor),
                    ),
                    Text(
                      'Stay Productive',
                      style: context.textTheme.titleLarge,
                    )
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: CachedNetworkImage(
                    imageUrl: 'https://picsum.photos/400/400',
                    width: 55.w,
                    height: 57.h,
                  ),
                )
              ],
            ),
            32.verticalSpace,
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Discover all features of pavlok ,',
                  style: context.textTheme.titleLarge,
                ),
                8.verticalSpace,
                Text(
                  'start sending stimulus right now .',
                  style: context.textTheme.bodySmall!
                      .copyWith(color: AppColors.secondaryTextColor),
                )
              ],
            ),
            32.verticalSpace,
            FilledButton(
                onPressed: () =>
                    Navigator.of(context).pushNamed(AppRoutes.sendStimulus),
                child: Text('Send Stimulus')),
            20.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recently Stimulus',
                  style: context.textTheme.titleMedium,
                ),
                Text(
                  'Show All',
                  style: context.textTheme.titleMedium!
                      .copyWith(color: AppColors.secondaryTextColor),
                ),
              ],
            ),
            10.verticalSpace,
            StimulsHistoryCard()
          ],
        ),
      )),
    );
  }
}
