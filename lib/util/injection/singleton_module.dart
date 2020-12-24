import 'package:injectable/injectable.dart';
import 'package:nibblr_app/services/datepicker/datepicker_service.dart';
import 'package:nibblr_app/services/http/http_service_api.dart';
import 'package:nibblr_app/services/log/logger_service.dart';
import 'package:nibblr_app/services/token/token_service.dart';

@module
abstract class SingletonModule {
  // --------------- SERVICES --------------- SERVICES --------------- SERVICES --------------- \\

  @singleton
  HttpService get httpService;

  @lazySingleton
  LoggerService get loggerService;

  @lazySingleton
  TokenService get sharedPrefService;

  @lazySingleton
  DatePickerService get datePickerService;

}
