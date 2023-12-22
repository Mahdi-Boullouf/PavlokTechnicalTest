part of 'stimulus_cubit.dart';

abstract class StimulusState extends Equatable {
  const StimulusState();
}

class StimulusInitial extends StimulusState {
  @override
  List<Object> get props => [];
}
class StimulusLoading extends StimulusState{
  @override
  // TODO: implement props
  List<Object?> get props =>[];

}
class StimulusLoaded extends StimulusState{
 final  List<Stimulus> stimulusList ;

  const StimulusLoaded( this.stimulusList);
  @override
  // TODO: implement props
  List<Object?> get props => [stimulusList];

}
class StimulusError extends StimulusState{
  final String messageError ;

  const StimulusError(this.messageError);

  @override
  // TODO: implement props
  List<Object?> get props => [messageError];
}