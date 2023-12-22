import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pavlok_app/core/extensions/context_extension.dart';
import 'package:pavlok_app/core/res/app_colors.dart';
import 'package:pavlok_app/core/ui/components/error_widget.dart';
import 'package:pavlok_app/core/ui/components/loading_widget.dart';
import 'package:pavlok_app/core/ui/components/stimulus_history_card.dart';
import 'package:pavlok_app/features/home/cubit/stimulus_cubit.dart';
import 'package:pavlok_app/features/stimulus/models/stimulus.dart';
import 'package:pavlok_app/main.dart';

import '../../../config/router/routes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<StimulusCubit>().getStimulus(user.token!);
  }
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
                      'Good day ${user.firstName} ,',
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
                  child: Container(
                    width: 55.w,
                    height: 57.h,
                    color: AppColors.primaryColor,
                    child: Icon(Icons.person_2_outlined,color: Colors.white,),
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
                child: const Text('Send Stimulus')),
            20.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recently Stimulus',
                  style: context.textTheme.titleMedium,
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context).pushNamed(AppRoutes.stimulus),
                  child: Text(
                    'Show All',
                    style: context.textTheme.titleMedium!
                        .copyWith(color: AppColors.secondaryTextColor),
                  ),
                ),
              ],
            ),
            10.verticalSpace,
            BlocBuilder<StimulusCubit, StimulusState>(
  builder: (context, state) {
    if(state is StimulusLoading || state is StimulusInitial){
      return const LoadingWidget();
    }
    else if(state is StimulusError){
      return ErrorInfoWidget(message: state.messageError);
    }
    state = state as StimulusLoaded;
    List<Stimulus> stimulusList = state.stimulusList;
    return ListView.builder(itemBuilder: (context, index) =>  StimulusHistoryCard(stimulus: stimulusList[index],),itemCount: stimulusList.length <8 ? stimulusList.length : 8,shrinkWrap: true,physics: const NeverScrollableScrollPhysics(),);
  },
)

          ],
        ),
      )),
    );
  }
}
