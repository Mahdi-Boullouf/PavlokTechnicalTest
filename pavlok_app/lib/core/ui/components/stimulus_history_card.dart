import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pavlok_app/core/extensions/context_extension.dart';
import 'package:pavlok_app/core/ui/components/stimulus_icon.dart';

import '../../../features/stimulus/models/stimulus.dart';
import '../../res/app_colors.dart';

class StimulusHistoryCard extends StatelessWidget {
  const StimulusHistoryCard({super.key, required this.stimulus});
final Stimulus stimulus;
String getFormattedDate(){
  DateTime dateTime = DateTime.parse(stimulus.createdAt!);
  return DateFormat().format(dateTime);

}
  @override
  Widget build(BuildContext context) {

    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
      leading: const StimulusIcon(),
      title: Text(
        stimulus.type!.toUpperCase(),
        style: context.textTheme.bodyMedium,
      ),
      subtitle: Text(
       getFormattedDate(),
        style: context.textTheme.bodySmall!
            .copyWith(color: AppColors.secondaryTextColor),
      ),
    );
  }
}
