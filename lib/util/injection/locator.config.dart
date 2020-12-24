// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../../services/datepicker/datepicker_service.dart';
import '../../services/http/http_service_api.dart';
import '../../services/log/logger_service.dart';
import 'singleton_module.dart';
import '../../services/token/token_service.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final singletonModule = _$SingletonModule();
  gh.lazySingleton<DatePickerService>(() => singletonModule.datePickerService);
  gh.lazySingleton<LoggerService>(() => singletonModule.loggerService);
  gh.lazySingleton<TokenService>(() => singletonModule.sharedPrefService);

  // Eager singletons must be registered in the right order
  gh.singleton<HttpService>(singletonModule.httpService);
  return get;
}

class _$SingletonModule extends SingletonModule {
  @override
  DatePickerService get datePickerService => DatePickerService();
  @override
  HttpService get httpService => HttpService();
  @override
  LoggerService get loggerService => LoggerService();
  @override
  TokenService get sharedPrefService => TokenService();
}
