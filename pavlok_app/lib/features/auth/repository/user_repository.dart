import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:pavlok_app/config/api/api_service.dart';
import 'package:pavlok_app/config/api/endpoints.dart';
import 'package:pavlok_app/config/error/failures.dart';
import 'package:pavlok_app/features/auth/models/user.dart';

import '../../../config/error/failure.dart';

class UserRepository{
  Future<Either< User,Failure>> signInWithEmailAndPassword(String email, String password)async{
try{
  final response = await ApiService(Endpoints.baseUrl).post(
      Endpoints.login, {'user': {'email': email, 'password': password}});
  return Left( User.fromJson(response['user']));
} on Failure catch(e){
  return Right(e);

}


}
Future<Either<bool,Failure>> restorePassword(String email)async{
    try{
      final response = await ApiService(Endpoints.baseUrl).post(Endpoints.forgetPassword, {"user":{"email":email}});
    return Left(true);
      }
    on Failure catch(e){
      return Right(e);
    }
}
}