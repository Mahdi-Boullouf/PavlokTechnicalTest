import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pavlok_app/features/stimulus/repository/stimulus_repository.dart';
import 'package:pavlok_app/main.dart';

part 'send_stimulus_state.dart';

class SendStimulusCubit extends Cubit<SendStimulusState> {
  SendStimulusCubit(this.stimulsRepository) : super(SendStimulusInitial());
  final StimulsRepository stimulsRepository;
  void sendStimulus(String stimulusType,int value , String reason){
    emit(SendStimulusLoading());
    stimulsRepository.sendStimulus({'stimulusType':stimulusType,'reason':reason,'stimulusValue':value}, user.token!).then((value) => value.fold((l) => emit(SendStimulusSuccess()), (r) => emit(SendStimulusError(errorMessage: r.message))));

  }
}
