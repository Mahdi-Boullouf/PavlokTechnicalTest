part of 'auth_cubit.dart';

abstract class AuthState extends Equatable {
  const AuthState();
}

class AuthInitial extends AuthState {
  @override
  List<Object> get props => [];
}
class AuthLoading extends AuthState{
  @override
  // TODO: implement props
  List<Object?> get props =>[];

}
class AuthSucced extends AuthState{
  final User user ;

  AuthSucced({required this.user});

  @override
  // TODO: implement props
  List<Object?> get props => [user];
}

class AuthError extends AuthState{
  final String errorMessage ;

  AuthError({required this.errorMessage});

  @override
  // TODO: implement props
  List<Object?> get props => [errorMessage];

}
