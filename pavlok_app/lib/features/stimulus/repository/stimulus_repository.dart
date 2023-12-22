import 'package:dartz/dartz.dart';
import 'package:pavlok_app/config/api/api_service.dart';
import 'package:pavlok_app/config/api/endpoints.dart';

import '../../../config/error/failure.dart';
import '../models/stimulus.dart';

class StimulsRepository{
  Future<Either<List<Stimulus>,Failure>> getStimulus(String token) async{
    try{
      final rawData =await ApiService(Endpoints.baseUrl).get(Endpoints.getAllStimulus,headers:  {'Authorization' :'Bearer $token'});
      List<Map<String,dynamic>> stimulusListRawData =List<Map<String,dynamic>>.from( rawData['stimulusList']);
      final stimulusList=  stimulusListRawData.map((e) => Stimulus.fromJson(e)).toList();
       return Left( stimulusList);
    }
    on Failure catch(e){
      return Right(e);
    }

  }

  Future<Either<bool,Failure>> sendStimulus(Map<String,dynamic> stimulusData,String token) async {
    try{
      final rawData =await ApiService(Endpoints.baseUrl).post(Endpoints.sendStimulus,{'stimulus':stimulusData},headers:  {'Authorization' :'Bearer $token'});
    return Left(true);

    }
    on Failure catch(e){
      return Right(e);
    }
  }

}