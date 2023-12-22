import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pavlok_app/config/error/failure.dart';
import 'package:pavlok_app/features/auth/repository/user_repository.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../models/user.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.userRepository) : super(AuthInitial());
  final UserRepository userRepository;
  void signInWithEmailAndPassword(String email , String password){
    emit(AuthLoading());

       userRepository.signInWithEmailAndPassword(email, password).then((value) => value.fold((l) =>

         emit(AuthSucced(user: l)), (r) => emit(AuthError(errorMessage: r.message))));


  }


}
