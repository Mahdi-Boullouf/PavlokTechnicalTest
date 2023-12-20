import 'package:flutter/material.dart';
import 'package:pavlok_app/core/extensions/context_extension.dart';
import 'package:pavlok_app/core/ui/components/stimulus_icon.dart';

import '../../res/app_colors.dart';

class StimulsHistoryCard extends StatelessWidget {
  const StimulsHistoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 0),
      leading: StimulusIcon(),
      title: Text(
        'Beep',
        style: context.textTheme.bodyMedium,
      ),
      subtitle: Text(
        '21 December , 2023',
        style: context.textTheme.bodySmall!
            .copyWith(color: AppColors.secondaryTextColor),
      ),
    );
  }
}
