import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pavlok_app/core/app/app.dart';
import 'package:pavlok_app/features/auth/cubit/auth_cubit.dart';
import 'package:pavlok_app/features/auth/repository/user_repository.dart';
import 'package:pavlok_app/features/home/cubit/stimulus_cubit.dart';
import 'package:pavlok_app/features/stimulus/cubit/send_stimulus_cubit.dart';
import 'package:pavlok_app/features/stimulus/repository/stimulus_repository.dart';

class Di extends StatelessWidget {
  const Di({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context) => AuthCubit(UserRepository()),),
      BlocProvider(create: (context) => StimulusCubit(StimulsRepository()),),
      BlocProvider(create: (context) => SendStimulusCubit(StimulsRepository())),


    ], child: const MyApp());
  }
}
