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

  Future<dynamic> get(String endpoint) async {
    try {
      final response = await _dio.get(endpoint);
      return response.data;
    } catch (e) {
      _handleError(e);
    }
  }

  Future<dynamic> post(String endpoint, dynamic data) async {
    try {
      final response = await _dio.post(
        endpoint,
        data: data,
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
    if (error is SocketException) {
      throw InternetExceptionFailure();
    } else if (error is FormatException) {
      throw ServerExceptionFailure();
    }
  }
}
