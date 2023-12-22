import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pavlok_app/core/extensions/context_extension.dart';
import 'package:pavlok_app/core/res/app_colors.dart';
import 'package:pavlok_app/core/ui/components/loading_widget.dart';
import 'package:pavlok_app/features/home/cubit/stimulus_cubit.dart';
import 'package:pavlok_app/features/stimulus/cubit/send_stimulus_cubit.dart';
import 'package:pavlok_app/features/stimulus/ui/stimulus_tile.dart';
import 'package:pavlok_app/core/utils/utils.dart';

import '../../../main.dart';
class SendStimulusScreen extends StatefulWidget {
  const SendStimulusScreen({super.key});

  @override
  State<SendStimulusScreen> createState() => _SendStimulusScreenState();
}

class _SendStimulusScreenState extends State<SendStimulusScreen> {
  int selectedOption = 0;
  double value = 20;
  final stimulusTypes = ['beep','zap','vibe'];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar:Container(
        color: AppColors.whiteColor,

        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        child: BlocConsumer<SendStimulusCubit, SendStimulusState>(
          listener: (context, state) {

            if(state is SendStimulusError){
              Utils.showFlushBar(context, state.errorMessage);
            }else if (state is SendStimulusSuccess){
              Utils.showFlushBar(context, 'Stimulus has sent succesfuly .');
            }
          },
          builder: (context, state) {
            if(state is SendStimulusLoading){
              return  const FilledButton(onPressed: null, child: CircularProgressIndicator(color: Colors.white,));
            }

                       return FilledButton(onPressed: (){

                         BlocProvider.of<SendStimulusCubit>(context).sendStimulus(stimulusTypes[selectedOption], value.toInt(), 'Just for testing');
                         BlocProvider.of<StimulusCubit>(context).getStimulus(user.token!);
                         }, child: const Text('Send'));


          },
        ),
        // child:
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
           ListView.builder(itemCount: stimulusTypes.length,itemBuilder: (context, index) => Container(margin: EdgeInsets.only(bottom: 8.h), child: GestureDetector(onTap: () {
             setState(() {
               selectedOption = index;
             });
           }, child: StimulusTile(isSelected: index == selectedOption, stimulusType: stimulusTypes[index]))),shrinkWrap: true,physics: const NeverScrollableScrollPhysics(),)
            ,22.verticalSpace,
            const Text('Value'),

            Row(
              children: [
                Expanded(
                  child: Slider(value: value,max:100,activeColor: AppColors.primaryColor, onChanged: (value) {

                    setState(() {
                      this.value = value ;
                    });
                  },),
                ),
                Center(child: Text('${value.toInt()}%')),
              ],
            )
          ],
        ),
      )),
    );
  }

}
