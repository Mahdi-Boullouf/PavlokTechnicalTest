import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pavlok_app/core/extensions/context_extension.dart';
import 'package:pavlok_app/core/ui/components/error_widget.dart';
import 'package:pavlok_app/core/ui/components/loading_widget.dart';
import 'package:pavlok_app/core/ui/components/stimulus_history_card.dart';
import 'package:pavlok_app/features/home/cubit/stimulus_cubit.dart';

class AllStimulusScreen extends StatelessWidget {
  const AllStimulusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('All stimulus',style: context.textTheme.bodySmall,),),
      body: SafeArea(child: SingleChildScrollView(padding: EdgeInsets.symmetric(horizontal: 16.w),child: Column(children: [
        BlocBuilder<StimulusCubit, StimulusState>(
  builder: (context, state) {
    if(state is StimulusError){
      return ErrorInfoWidget(message: state.messageError);
    }
    else if (state is StimulusLoading || state is StimulusInitial){
      return const LoadingWidget();
    }
    state = state as StimulusLoaded;
    final stimulusList = state.stimulusList;
    return ListView.builder(itemBuilder: (context, index) => StimulusHistoryCard(stimulus:stimulusList[index]),itemCount: stimulusList.length,shrinkWrap: true,physics: const NeverScrollableScrollPhysics(),);
  },
)
      ],))),
    );
  }
}
