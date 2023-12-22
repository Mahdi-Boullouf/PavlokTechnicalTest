import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../stimulus/models/stimulus.dart';
import '../../stimulus/repository/stimulus_repository.dart';

part 'stimulus_state.dart';

class StimulusCubit extends Cubit<StimulusState> {
  StimulusCubit(this.stimulsRepository) : super(StimulusInitial());
  final StimulsRepository stimulsRepository;
  void getStimulus(String token ){
    emit(StimulusLoading());
      stimulsRepository.getStimulus(token).then((value) => value.fold((l) => emit(StimulusLoaded(l)), (r) => emit(StimulusError(r.message))));

  }

}
