import 'dart:async';

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:nibblr_app/data/response/custom_response.dart';
import 'package:nibblr_app/services/log/logger_service.dart';
import 'package:nibblr_app/services/token/token_service.dart';
import 'package:nibblr_app/util/injection/locator.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class HttpService {
  static const _baseUrl = 'http://nibblr-api.herokuapp.com/api/';
  final _log = locator<LoggerService>().getLogger('HttpService');
  final _tokenService = locator<TokenService>();

  Dio _dio;
  Timer _timer;
  String _token;

  // --------------- REQUESTS --------------- REQUESTS --------------- REQUESTS --------------- \\

  Future<CustomResponse> get({String path, Map parameters}) async {
    await init();
    CustomResponse response;
    try {
      response = CustomResponse.fromDIO(await _dio.get(path, queryParameters: parameters));
    } on DioError catch(e) {
      _log.e('Unable to GET request');
      _log.e(e);
      response = CustomResponse.fromDIO(e.response);
    } catch(e) {
      _log.e(e);
    }
    return response;
  }

  Future<CustomResponse> post({String path, Map requestBody}) async {
    await init();
    CustomResponse response;
    try {
      response = CustomResponse.fromDIO(await _dio.post(path, data: requestBody));
    } on DioError catch(e) {
      _log.e('Unable to POST request');
      _log.e(e);
      response = CustomResponse.fromDIO(e.response);
    }
    return response;
  }

  Future<CustomResponse> put({String path, Map requestBody}) async {
    await init();
    CustomResponse response;
    try {
      response = CustomResponse.fromDIO(await _dio.put(path, data: requestBody));
    } on DioError catch(e) {
      _log.e('Unable to PUT request');
      _log.e(e);
      response = CustomResponse.fromDIO(e.response);
    }
    return response;
  }

  Future<CustomResponse> delete({String path, Map parameters}) async {
    await init();
    CustomResponse response;
    try {
      response = CustomResponse.fromDIO(await _dio.delete(path, queryParameters: parameters));
    } on DioError catch(e) {
      _log.e('Unable to DELETE request');
      _log.e(e);
      response = CustomResponse.fromDIO(e.response);
    }
    return response;
  }


  // --------------- CONFIG --------------- CONFIG --------------- CONFIG --------------- \\

  Future<void> init() async {
    if (_token == null || _dio == null || _token.isEmpty) {
      await resetDio();
      _initInterceptors();
      _log.i('Initialized');
    }
  }

  Future resetDio() async{
    _dio = await _getDioConfig();
  }

  Future<Dio> _getDioConfig() async {
    return Dio(BaseOptions(
        baseUrl: _baseUrl,
        connectTimeout: 20000,
        receiveTimeout: 20000,
        headers: {'Authorization': _token ?? await _initToken()}));
  }

  Future<String> _initToken() async {
    _token = await _tokenService.getToken();
    return _token;
  }

  void _initInterceptors() {
    // LOGGER
    if (Logger.level == Level.verbose) {
      _dio.interceptors.add(PrettyDioLogger(
          requestBody: true,
          responseBody: true,
          requestHeader: true,
          responseHeader: true,
          error: true,
          compact: true,
          maxWidth: 90));
    }
  }

  // --------------- DISPOSE --------------- DISPOSE --------------- DISPOSE --------------- \\

  void dispose() {
    resetService();
  }

  void resetService() {
    _dio = null;
    _token = null;
  }

}
