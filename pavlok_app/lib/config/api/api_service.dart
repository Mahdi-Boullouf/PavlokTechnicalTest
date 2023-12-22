import 'dart:io';

import 'package:dio/dio.dart';
import 'package:pavlok_app/config/error/failures.dart';

class ApiService {
  final Dio _dio;

  ApiService(String baseUrl)
      : _dio = Dio(
          BaseOptions(
            baseUrl: baseUrl,
            connectTimeout: const Duration(milliseconds: 5000),
            receiveTimeout: const Duration(milliseconds: 5000),
          ),
        );

  Future<dynamic> get(String endpoint,{Map<String,dynamic>? headers}) async {
    try {
      final response = await _dio.get(endpoint,options:Options(headers: headers) );
      return response.data;
    } catch (e) {
      _handleError(e);
    }
  }

  Future<dynamic> post(String endpoint, dynamic data,{Map<String,dynamic>? headers}) async {
    try {
      final response = await _dio.post(
        endpoint,
        data: data,
        options:Options(headers: headers)
      );


      return response.data;



    } catch (e) {
      _handleError(e);
    }
  }

  Future<dynamic> put(String endpoint, dynamic data) async {
    try {
      final response = await _dio.put(
        endpoint,
        data: data,
      );
      return response.data;
    } catch (e) {
      _handleError(e);
    }
  }

  void _handleError(error) {
    // Handle error based on your requirements


  if(error.type == DioExceptionType.connectionError){
    throw InternetExceptionFailure();
  }else if (error.type == DioExceptionType.badResponse){
    throw BadResponseFailure( message :error.response!.data['errors'][0]);

  } else if(error.type == DioExceptionType.connectionTimeout ){

  }


  }}

