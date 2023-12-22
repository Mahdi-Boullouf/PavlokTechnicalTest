part of 'restore_password_cubit.dart';

abstract class RestorePasswordState  extends Equatable{
  const RestorePasswordState();
}

class RestorePasswordInitial extends RestorePasswordState {
  @override
  // TODO: implement props
  List<Object?> get props => [];

}

class RestorePasswordLoading extends RestorePasswordState{
  @override
  // TODO: implement props
  List<Object?> get props => [];


}
class RestorePasswordEmailSentSuccess extends RestorePasswordState{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}

class RestorePasswordError extends RestorePasswordState{

  final String errorMessage ;


const RestorePasswordError(this.errorMessage);
  @override
  // TODO: implement props
  List<Object?> get props => [errorMessage];

}