import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pavlok_app/features/auth/repository/user_repository.dart';

part 'restore_password_state.dart';

class RestorePasswordCubit extends Cubit<RestorePasswordState> {
  RestorePasswordCubit(this.userRepository) : super(RestorePasswordInitial());
 final  UserRepository userRepository;
  void sentRestorePasswordEmail(String email){
    emit(RestorePasswordLoading());
    userRepository.restorePassword(email).then((value) =>value.fold((l) =>emit(RestorePasswordEmailSentSuccess()) , (r) => emit(RestorePasswordError(r.message))));
  }
}
