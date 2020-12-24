import 'package:dio/dio.dart';

class CustomResponse {
  final int statusCode;
  final Map<String, dynamic> object;
  final List<dynamic> list;

  CustomResponse({this.statusCode, this.object, this.list});

  CustomResponse.fromDIO(Response response)
      : statusCode = response.statusCode,
        object = response.data is Map ? response.data : null,
        list = response.data is List ? response.data : null;
}
