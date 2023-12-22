part of 'send_stimulus_cubit.dart';

abstract class SendStimulusState extends Equatable {
  const SendStimulusState();
}

class SendStimulusInitial extends SendStimulusState {
  @override
  List<Object> get props => [];
}
class SendStimulusLoading extends SendStimulusState {
  @override
  List<Object> get props => [];
}
class SendStimulusSuccess extends SendStimulusState {
  @override
  List<Object> get props => [];
}
class SendStimulusError extends SendStimulusState {
  final String errorMessage;

  SendStimulusError({required this.errorMessage});
  @override
  List<Object> get props => [errorMessage];
}
